Deface::Override.new(:virtual_path  => "spree/products/_cart_form",
                     :replace => "code[erb-loud]:contains('form_for :order')",
                     :text          => "<%= include_gon %><%= form_for :order, :url => populate_orders_path, :html => { :multipart => true } do |f| %>",
                     :name  => "multi_form_for")
                     
# Deface::Override.new(:virtual_path  => "spree/products/_cart_form",
#                     :insert_after => "div#inside-product-cart-form",
#                     :text          => "<%= f.file_field( :upf  ) %>",
#                     :name          => "artwork_upload")


Deface::Override.new(:virtual_path  => "spree/products/_cart_form",
# :replace_contents => "code[erb-loud]:contains('@product.variants_and_option_values')>li",
:replace_contents => "div#product-variants",
                     :name  => "drop_down_variants",
                     :text  => <<eos
                     
                     <div id="product-variants" class="columns five alpha">
                       <h6 class="product-section-title"><%= Spree.t(:options) %></h6>
                       <ul>
                         <% @options.each do |option| %>
                           <li style="list-style:none">
                             <span class="variant-description">
                                 <%= f.label option[:name] %>
                                 <%= select_tag option[:name], options_for_select(option[:values]) %>
                             </span>
                            </li>
                         <% end %>
                      </ul>
                      <h6 class="product-section-title"><%= Spree.t(:artwork) %></h6>
                        <%= f.file_field( :upf  ) %>
                      
eos
)                     
                     
                     
#                      <<eos
#                      # <%= select_tag "products[#{@product.id}]", options_for_select(@product.variants_and_option_values(current_currency).collect{|v| ["#{variant_options(v)} #{variant_price(v)}", v.id]})%>
#                        # <label for="<%= ['products', @product.id, variant.id].join('_') %>">
#                        #   <span class="variant-description">
#                        #     <%= variant_options variant %>
#                        #   </span>
#                        #   <% if variant_price variant %>
#                        #     <span class="price diff"><%= variant_price variant %></span>
#                        #   <% end %>
#                        # </label>
#                        test
# <%=     debug( @options ) %>
# eos
#)