Deface::Override.new(:virtual_path => 'spree/shared/_order_details',
                     :name => "change_theader_order_details",
                     :replace_contents => "[data-hook='order_details_line_items_headers']",
                     :text => <<eos
                         <th colspan="2"><%= Spree.t(:item) %></th>
                         <th colspan="2"><%= Spree.t(:artwork_filename) %></th>
                         <th class="total"><span><%= Spree.t(:total) %></span></th>
eos
)            

Deface::Override.new(:virtual_path => 'spree/shared/_order_details',
                     :name => "change_order_line_item_details",
                     :replace_contents => "[data-hook='order_details_line_item_row']",
                     :text => <<eos
                     <td data-hook="order_item_image">
                       <% if item.variant.images.length == 0 %>
                         <%= link_to small_image(item.variant.product), item.variant.product %>
                       <% else %>
                         <%= link_to image_tag(item.variant.images.first.attachment.url(:small)), item.variant.product %>
                       <% end %>
                     </td>
                     <td data-hook="order_item_description">
                       <h4><%= item.variant.product.name %></h4>
                       <%= truncated_product_description(item.variant.product) %>
                       <%= "(" + item.variant.options_text + ")" unless item.variant.option_values.empty? %>
                     </td>
                     <td class="total"><span></span></td>
                     <td data-hook="order_item_filename" class="filename"><span><%= item.upf_filename %></span></td>
                     <td data-hook="order_item_total" class="total"><span><%= item.display_amount.to_html %></span></td>

eos
)            

# Deface::Override.new(:virtual_path => 'spree/shared/_order_details',
#                      :name => "change_theader_order_details2",
#                      :replace_contents => "table#line-items",
#                      # :closing_selector => "tfoot#order-total",
#                      :text => <<eos
#                      <col width="15%" valign="middle" halign="center">
#                      <col width="70%" valign="middle">
#                      <col width="5%" valign="middle" halign="center">
#                      <col width="5%" valign="middle" halign="center">
#                      <col width="5%" valign="middle" halign="center">
# 
#                      <thead data-hook>
#                        <tr data-hook="order_details_line_items_headers">
#                        <th colspan="2"><%= Spree.t(:item) %></th>
#                        <th colspan="2"><%= Spree.t(:artwork_filename) %></th>
#                        <th class="total"><span><%= Spree.t(:total) %></span></th>
#                        </tr>
#                      </thead>
# 
#                      <tbody data-hook>
#                        <% @order.line_items.each do |item| %>
#                          <tr data-hook="order_details_line_item_row">
#                          <td data-hook="order_item_image">
#                            <% if item.variant.images.length == 0 %>
#                              <%= link_to small_image(item.variant.product), item.variant.product %>
#                            <% else %>
#                              <%= link_to image_tag(item.variant.images.first.attachment.url(:small)), item.variant.product %>
#                            <% end %>
#                          </td>
#                          <td data-hook="order_item_description">
#                            <h4><%= item.variant.product.name %></h4>
#                            <%= truncated_product_description(item.variant.product) %>
#                            <%= "(" + item.variant.options_text + ")" unless item.variant.option_values.empty? %>
#                          </td>
#                          <td data-hook="order_item_filename" class="filename"><span><%= item.upf_filename %></span></td>
#                          <td data-hook="order_item_total" class="total"><span><%= item.display_amount.to_html %></span></td>
#                         </tr>
#                        <% end %>
#                      </tbody>
#                      <tfoot id="order-total" data-hook="order_details_total">
#                        <tr class="total">
#                          <td colspan="4"><b><%= Spree.t(:order_total) %>:</b></td>
#                          <td class="total"><span id="order_total"><%= @order.display_total.to_html %></span></td>
#                        </tr>
#                      </tfoot>
#                      <% if order.line_item_adjustment_totals.present? %>
#                        <tfoot id="price-adjustments" data-hook="order_details_price_adjustments">
#                          <% @order.line_item_adjustment_totals.each do |key, total| %>
#                            <tr class="total">
#                              <td colspan="4"><strong><%= key %></strong></td>
#                              <td class="total"><span><%= total %></span></td>
#                            </tr>
#                          <% end %>
#                        </tfoot>
#                      <% end %>
#                      <tfoot id="subtotal" data-hook="order_details_subtotal">
#                        <tr class="total" id="subtotal-row">
#                          <td colspan="4"><b><%= Spree.t(:subtotal) %>:</b></td>
#                          <td class="total"><span><%= @order.display_item_total.to_html %></span></td>
#                        </tr>
#                      </tfoot>
#                      <tfoot id="order-charges" data-hook="order_details_adjustments">
#                        <% @order.adjustments.eligible.each do |adjustment| %>
#                        <% next if (adjustment.originator_type == 'Spree::TaxRate') and (adjustment.amount == 0) %>
#                          <tr class="total">
#                            <td colspan="4"><strong><%= adjustment.label %></strong></td>
#                            <td class="total"><span><%= adjustment.display_amount.to_html %></span></td>
#                          </tr>
#                        <% end %>
#                      </tfoot>
# eos
# )            