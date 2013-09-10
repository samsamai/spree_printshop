Spree::OrderPopulator.class_eval do
    def populate(from_hash)
      
      if from_hash[:order] == nil
        uploaded_file = nil
      else
        uploaded_file =  from_hash[:order][:upf]
      end
      
      from_hash[:products].each do |product_id,variant_id|
        attempt_cart_add(variant_id, from_hash[:quantity],  uploaded_file )
      end if from_hash[:products]
    
      from_hash[:variants].each do |variant_id, quantity|
        attempt_cart_add(variant_id, quantity, uploaded_file)
      end if from_hash[:variants]
     
      valid?
    end
    
    def valid?
      errors.empty?
    end
    
    private
    
    def attempt_cart_add(variant_id, quantity, uploaded_file)
      quantity = quantity.to_i
      # 2,147,483,647 is crazy.
      # See issue #2695.
      if quantity > 2_147_483_647
        errors.add(:base, Spree.t(:please_enter_reasonable_quantity, :scope => :order_populator))
        return false
      end
    
      variant = Spree::Variant.find(variant_id)
      if quantity > 0
        line_item = @order.contents.add(variant, quantity, currency, uploaded_file)
        unless line_item.valid?
          errors.add(:base, line_item.errors.messages.values.join(" "))
          return false
        end
      end
    end
end

