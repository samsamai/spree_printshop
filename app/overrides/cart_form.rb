# Deface::Override.new(:virtual_path  => "spree/products/_cart_form",
#                      :replace => "code[erb-loud]:contains('form_for :order')",
#                      :text          => "<%= include_gon %><%= form_for :order, :url => populate_orders_path, :html => { :multipart => true } do |f| %>",
#                      :name  => "multi_form_for")
# 
# 
# 
# 
# Deface::Override.new(:virtual_path  => "spree/products/_cart_form",
#                      :replace => "code[erb-loud]:contains('form_for :order')",
#                      :text          => "<%= include_gon %><%= form_for :order, :url => populate_orders_path, :html => { :multipart => true } do |f| %>",
#                      :name  => "multi_form_for")
#                      
# Deface::Override.new(:virtual_path  => "spree/products/_cart_form",
#                      :replace_contents => "div.add-to-cart",
#                      :name          => "remove_quantity",
#                      :partial       => "partials/cart_form"
# )
# 
# Deface::Override.new(:virtual_path  => "spree/products/_cart_form",
# :replace_contents => "div#product-variants",
#        :name  => "drop_down_variants",
#        :text  => <<eos
#        
#          <h6 class="product-section-title"><%= Spree.t(:options) %></h6>
#          <ul>
#            <% @options.each do |option| %>
#              <li style="list-style:none">
#                <span class="variant-description">
#                    <%= f.label option[:name] %>
#                    <%= select_tag option[:name], options_for_select(option[:values]) %>
#                </span>
#               </li>
#            <% end %>
#         </ul>
#                     
# eos
# )
# 
# Deface::Override.new(:virtual_path  => "spree/products/_cart_form",
#     :insert_after => "div#inside-product-cart-form",
#                      :name          => "add_file_upload",
#                      :text          => <<eos
#        <h6 class="product-section-title"><%= Spree.t(:artwork) %></h6>
#          <%= f.file_field( :upf  ) %>
# eos
# )
