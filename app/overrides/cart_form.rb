Deface::Override.new(:virtual_path  => "spree/products/_cart_form",
                     :replace => "code[erb-loud]:contains('form_for :order')",
                     :text          => "<%= form_for :order, :url => populate_orders_path, :html => { :multipart => true } do |f| %>",
                     :name  => "multi_form_for")
                     
Deface::Override.new(:virtual_path  => "spree/products/_cart_form",
                    :insert_after => "div#inside-product-cart-form",
                    :text          => "<%= f.file_field( :upf  ) %>",
                    :name          => "artwork_upload")
