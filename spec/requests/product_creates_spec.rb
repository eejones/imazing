require 'rails_helper'
require 'spec_helper'


RSpec.describe "ProductCreates", :type => :request do

  describe "GET /products/new" do

   let(:current_user) { create_logged_in_user }

   it "shows the new selects when parent selector is clicked", :js => true do
      visit new_product_path(:current_user)
      select 'Equipment', :from => "product[overallcategory_id]"
      expect(page).to have_select("product[modality_id]")
      select "MRI", :from => "product[modality_id]"
      expect(page).to have_select("product[modtype_id]")
      expect(page).to have_no_select("product[manufacturer_id]")
      select "Magnet", :from => "product[modtype_id]"
      expect(page).to have_select("product[manufacturer_id]")
      select "SIEMENS", :from => "product[manufacturer_id]"
    end

    it "shows the correct selects from dynamic select in create product", :js => true do
      visit new_product_path(:current_user)
      fill_in "Price", :with => 3000
      select 'Equipment', :from => "product[overallcategory_id]"
      check "product[dealertype]"
      select "MRI", :from => "product[modality_id]"
      select "Magnet", :from => "product[modtype_id]"
      select "SIEMENS", :from => "product[manufacturer_id]"
      select "Brazil", :from => "Country"
    end

    it "shows correct things when any parent is changed", :js=>true do
      visit new_product_path(:current_user)
      fill_in "Price", :with => 3000
      select 'Equipment', :from => "product[overallcategory_id]"
      check "product[dealertype]"
      select "CT", :from => "product[modality_id]"
      expect(page).to have_no_select("product[manufacturer_id]")
      expect(page).to have_select("product[modtype_id]", :with_options => ["CT Scanner"])
      expect(page).to have_no_select("product[modtype_id]", :with_options => ["Magnet"])
      select "CT Scanner", :from => "product[modtype_id]"
      expect(page).to have_select("product[manufacturer_id]", :with_options => ["MARCONI"])
      select "MRI", :from => "product[modality_id]"
      expect(page).to have_no_select("product[manufacturer_id]")
      expect(page).to have_no_select("product[modality_id]", :with_options => ["CT Scanner"])
      select "Magnet", :from => "product[modtype_id]"
      expect(page).to have_no_select("product[modality_id]", :with_options => ["CT Scanner"])
      expect(page).to have_select("product[modtype_id]", :with_options => ["MRI Scanner"])
      expect(page).to have_no_select("product[manufacturer_id]", :with_options => ["3M"])
      select "SIEMENS", :from => "product[manufacturer_id]"
      expect(page).to have_select("product[manufacturer_id]", :with_options => ["OXFORD"])
      select "Power Conditioner", :from => "product[modtype_id]"
      expect(page).to have_no_select("product[manufacturer_id]", :with_options => ["OXFORD"])
      expect(page).to have_select("product[manufacturer_id]", :with_options => ["WDC"])
    end

  end
end
