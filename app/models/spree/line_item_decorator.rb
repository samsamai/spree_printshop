Spree::LineItem.class_eval do

    attr_accessible :upf, :variant
    has_attached_file :upf,
                      styles: { mini: '48x48>', small: '100x100>', product: '240x240>', large: '600x600>' },
                      default_style: :product,
                      url: '/spree/uploads/:id/:style/:basename.:extension',
                      path: ':rails_root/public/spree/uploads/:id/:style/:basename.:extension',
                      convert_options: { all: '-strip -auto-orient -colorspace RGB' }

end

