Deface::Override.new(:virtual_path => 'spree/orders/_form',
                     :name => "change_line_item_data_display",
                     :replace => "th.cart-item-description-header",
                     :closing_selector => "th.cart-item-delete-header",
                     :text => <<eos
                     <th class="cart-item-description-header" colspan="2"><%= Spree.t(:item) %></th>
                     <th class="cart-item-filename-header"><%= Spree.t(:artwork_filename) %></th>
                     <th class="cart-item-total-header"><%= Spree.t(:total) %></th>
                     <th class="cart-item-delete-header"></th>
 
eos
)            