require 'rails_helper'

RSpec.describe "ProductCreates", :type => :request do
  describe "GET /product_creates" do
    it "successfully creates a product" do
      product = Factory(:product)
      visit new_product_path
      click_link "Submit"
#      get product_creates_path
#      expect(response.status).to be(200)
    end
  end
end
