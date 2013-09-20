require 'spec_helper'

describe Spree::LineItem do
  
  it { should have_attached_file(:upf) }
  it { should validate_attachment_presence(:upf) }
  it { should validate_attachment_content_type(:upf).
                allowing('application/pdf' ) }

end
