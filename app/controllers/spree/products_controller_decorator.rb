Spree::ProductsController.class_eval do
  def show
    return unless @product

    @variants = @product.variants.active(current_currency).includes([:option_values, :images])
    @product_properties = @product.product_properties.includes(:property)

    @combi = Array.new   
    @variants.each do |v|
      values = v.option_values.joins(:option_type).order("#{Spree::OptionType.table_name}.position asc")

      variant_options_hash = Hash.new
      values.map do |ov|
        variant_options_hash[ov.option_type.presentation] = ov.presentation
        add_value_to_options( ov.option_type.presentation, ov.presentation)
      end
      variant_options_hash['Price'] = v.price
      
      @combi << variant_options_hash
    end
    
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
