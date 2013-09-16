Deface::Override.new(:virtual_path => 'spree/shared/_head',
                     :name => "include_gon_library",
                     :insert_after => "code[erb-loud]:contains('<%= csrf_meta_tags %>')",
                     :text => "" )            

