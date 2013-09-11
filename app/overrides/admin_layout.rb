Deface::Override.new(:virtual_path => 'spree/layouts/admin',
                     :name => "add_debuging_info_to_admin",
                     :insert_before => "[data-hook='admin_footer_scripts']",
                     :text => <<eos
<%= debug(params) if Rails.env.development? %>
eos
)            


