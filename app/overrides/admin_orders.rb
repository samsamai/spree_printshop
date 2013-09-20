Deface::Override.new(:virtual_path => "spree/admin/orders/_shipment_manifest",
                     :name => "replace_quantity_with_filename",
                     :replace_contents => "td.item-qty-show",
                     :text => <<eos
                     <% if line_item.upf.url == "/images/missing.jpg" %>
                       <p class="errorExplanation"> Error: No artwork file!</p>
                     <% else %>
                       <%= link_to line_item.upf_filename, line_item.upf.url %>
                     <% end %>
eos
)            

Deface::Override.new(:virtual_path => "spree/admin/orders/_shipment",
                     :name => "replace_quantity_title_with_filename",
                     :replace_contents => "[data-hook='stock-contents'] > thead",
                     :text => <<eos
                     <th colspan="2"><%= Spree.t(:item_description) %></th>
                     <th><%= Spree.t(:price) %></th>
                     <th><%= Spree.t(:artwork) %></th>
                     <th><%= Spree.t(:total) %></th>
                     <th class="orders-actions actions" data-hook="admin_order_form_line_items_header_actions"></th>
eos
)            

