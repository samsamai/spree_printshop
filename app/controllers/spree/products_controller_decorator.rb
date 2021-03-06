Spree::ProductsController.class_eval do
  def show
    return unless @product

    @variants = @product.variants_including_master.active(current_currency).includes([:option_values, :images])
    sp_variants = @product.variants.active(current_currency).includes([:option_values, :images])
    @product_properties = @product.product_properties.includes(:property)

    # Make an array of hashes with the option values + price, id
    @combi = Array.new   
    sp_variants.each do |v|
      values = v.option_values.joins(:option_type).order("#{Spree::OptionType.table_name}.position asc")
      variant_options_hash = Hash.new
      values.map do |ov|
        variant_options_hash[ov.option_type.presentation] = ov.presentation
        add_value_to_options( ov.option_type.presentation, ov.presentation)
      end
      
      variant_options_hash['Price'] = v.price_in(current_currency).display_price.to_s
      variant_options_hash['id'] = v.id
      
      @combi << variant_options_hash
          
    end
    # Rails.logger.debug( "DEBUG: @combi = #{@combi}" )
    
    #@combi = @combi.sort{ |a1, a2| a1["Qty"].to_i <=> a2["Qty"].to_i }
    
    # Pass combination data to js via gon
    gon.combi = @combi
    
    referer = request.env['HTTP_REFERER']
    if referer
      begin
        referer_path = URI.parse(request.env['HTTP_REFERER']).path
        # Fix for #2249
      rescue URI::InvalidURIError
        # Do nothing
      else
        if referer_path && referer_path.match(/\/t\/(.*)/)
          @taxon = Taxon.find_by_permalink($1)
        end
      end
    end
  end

  private

    def add_value_to_options(name, value)
      if @options
        
        option_found = false
        @options.each do |option|
          # if option exists add the value to it
          if option[:name] == name
            option_found = true
            
            values = option[:values]
        
            found = false
            values.each do |v|
              if v == value
                found = true
                break
              end        
            end
        
            values << value unless found
            
            if name == "Qty"
              values = values.sort{ |a1,a2| a1.to_i <=> a2.to_i }
            else
              values = values.sort{ |a1,a2| a1 <=> a2 }
            end
            
            option[:values] = values
            return
          end
        end
        
        @options << {name: name, values: [value] } unless option_found
        
        
      else
        @options = [{name: name, values: [value] }]
      end
    end
  
end
