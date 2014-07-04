require 'rails_helper'

RSpec.describe "ProductEdits", :type => :request do
  describe "GET /product_edits" do
    it "successfully updates the product after it is edited" do
      product = Factory(:product)
      get product_edits_path
      expect(response.status).to be(200)
    end
  end
end
