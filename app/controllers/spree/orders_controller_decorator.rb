Spree::OrdersController.class_eval do
  # Adds a new item to the order (creating a new order if none already exists)
  # add uploaded file facility
  def populate
    populator = Spree::OrderPopulator.new(current_order(true), current_currency)
    if populator.populate(params.slice(:products, :variants, :quantity, :order ))
      current_order.create_proposed_shipments if current_order.shipments.any?
  
      fire_event('spree.cart.add')
      fire_event('spree.order.contents_changed')
      respond_with(@order) do |format|
        format.html { redirect_to cart_path }
      end
    else
      flash[:error] = populator.errors.full_messages.join(" ")
      redirect_to :back
    end
  end

end
