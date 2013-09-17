Spree::LineItem.class_eval do
  
    VALID_UPLOAD_FILE_CONTENT_TYPES = ["application/pdf", "application/x-pdf"]
    VALID_UPLOAD_FILE_EXTENSIONS = ["pdf"]
    
    attr_accessible :upf, :variant
    has_attached_file :upf,
                      url: '/spree/uploads/:id/:basename.:extension',
                      path: ':rails_root/public/spree/uploads/:id/:basename.:extension'

    #validates :upf, :attachment_presence => {:message => "Error: please select your artwork file to upload"}
    # validates :upf, :attachment_content_type => ['application/pdf']

      # validates_attachment :upf, :presence => true,
      #     :content_type => { :content_type => "application/pdf" }
      #     

    validate :mime_type_or_file_extension

                   
    def upf_filename
      upf_file_name
    end

    private
    def mime_type_or_file_extension
      if self.upf.present? &&
         !VALID_UPLOAD_FILE_CONTENT_TYPES.include?(self.upf_content_type) &&
         !VALID_UPLOAD_FILE_EXTENSIONS.include?(Pathname.new(self.upf_file_name).extname[1..-1])
        self.errors.add(:upf_file_name, "File must be one of ." + VALID_UPLOAD_FILE_EXTENSIONS.join(' .'))
      end
    end          

end

