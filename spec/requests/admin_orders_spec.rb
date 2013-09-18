require 'spec_helper'

describe "Admin Orders page" do

  subject { page }
  describe "edit" do
    let(:order) { create(:order, :state => 'complete', :completed_at => "2011-02-01 12:36:15", :number => "R100") }
    # let!(:product) { create(:product, :name => 'spree t-shirt', :price => 20.00) }
    # before do
    #   order.contents.add(product.master, 2)
    # end
    # stub_authorization!
    # 
    # before { visit spree.edit_admin_order_path(order) }
    # 
    # it "should have link to artwork" do
    #   should have_content( "Artwork")
    # end

  end
end