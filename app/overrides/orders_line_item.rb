Deface::Override.new(:virtual_path => 'spree/orders/_line_item',
                     :name => "change_line_item_data_display",
                     :replace => "td.cart-item-price",
                     :closing_selector => "td.cart-item-total",
                     :text => <<eos
                       <td class="cart-item-filename" data-hook="cart_item_filename">
                         <%= item_form.label :upf_file_name, line_item.upf_filename %>
                       </td>
                       <td class="cart-item-price" data-hook="cart_item_price" style="display:none">
                         <%= line_item.single_money.to_html %>
                       </td>
                       <td class="cart-item-quantity" data-hook="cart_item_quantity" style="display:none;">
                         <%= item_form.number_field :quantity, :min => 0, :class => "line_item_quantity", :size => 5 %>
                       </td>
                       <td class="cart-item-total" data-hook="cart_item_total">
                         <%= line_item.display_amount.to_html unless line_item.quantity.nil? %>
                       </td>
                     
eos
)