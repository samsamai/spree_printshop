Spree::LineItem.class_eval do

    attr_accessible :upf, :variant
    has_attached_file :upf,
                      url: '/spree/uploads/:id/:basename.:extension',
                      path: ':rails_root/public/spree/uploads/:id/:basename.:extension'


                      # VALID_CONTENT_TYPES = ["application/zip", "application/x-zip", "application/x-zip-compressed", "application/pdf", "application/x-pdf"]
                      # 
                      # before_validation(:on => :create) do |file|
                      #   if file.media_content_type == 'application/octet-stream'
                      #     mime_type = MIME::Types.type_for(file.media_file_name)    
                      #     file.media_content_type = mime_type.first.content_type if mime_type.first
                      #   end
                      # end
                      # 
                      # validate :attachment_content_type
                      # 
                      # def attachment_content_type
                      #   errors.add(:media, "type is not allowed") unless VALID_CONTENT_TYPES.include?(self.media_content_type)
                      # end



    validates_attachment_content_type :upf,
        :content_type => [ 'application/.pdf' ],
        :message => "Error: only pdf files are allowed"
        
    validates :upf, :attachment_presence => {:message => "Error: please select your artwork file to upload"}
    

    def upf_filename
      upf_file_name
    end

end

