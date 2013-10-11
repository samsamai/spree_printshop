Deface::Override.new(:virtual_path => "spree/admin/products/index",
                     :name => "add_import_products_btn",
                     :insert_after => "li#new_product_link",
                     :text => <<eos
                     <li id="import_products_link">
                       <%= button_link_to Spree.t(:import_products), admin_import_index_path, { :remote => true, :icon => 'icon-upload', :id => 'admin_import_products' } %>
                     </li>
eos
)            
