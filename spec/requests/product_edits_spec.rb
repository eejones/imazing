require 'rails_helper'
require 'spec_helper'

RSpec.describe "ProductEdits", :type => :request do
  describe "GET /product_edits" do

  let(:current_user) { create_logged_in_user }

  let(:editproduct) { Product.find_by modtype_name: 'Magnet'}


   it "has the correct fields initially", :js=> true do
     visit edit_product_path(editproduct.id)
     expect(page).to have_select("product[modality_id]", :with_options => ["MRI"])
     expect(page).to have_select("product[modtype_id]", :with_options => ['Injector MRI'])
     expect(page).to have_no_select("product[manufacturer_id]", :with_options => ['3M'])
    end


    it "shows the correct selects and hides manufacturers when a new modality is selected", :js => true do
      visit edit_product_path(editproduct.id)
      expect(page).to have_select("product[manufacturer_id]")
      select "CT", :from => "product[modality_id]"
      expect(page).to have_no_select("product[manufacturer_id]")
      expect(page).to have_no_select("product[modtype_id]", :with_options => ['Injector MRI'])
      expect(page).to have_select("product[modtype_id]", :with_options => ['Injector CT'])
      select "Injector CT", :from => "product[modtype_id]"
      expect(page).to have_no_select("product[manufacturer_id]", :with_options => ['3M'])
      expect(page).to have_select("product[manufacturer_id]", :with_options => ['EZEM'])
    end


    it "shows the correct selects when modtype is changed", :js => true do
      visit edit_product_path(editproduct.id)
      select "MRI Coil", :from => "product[modtype_id]"
      expect(page).to have_select("product[modality_id]", :with_options => ["Contrast Injectors"])
      expect(page).to have_no_select("product[modtype_id]", :with_options => ["CT Scanner"])
      expect(page).to have_select("product[modtype_id]", :with_options => ['Injector MRI'])
      expect(page).to have_no_select("product[manufacturer_id]", :with_options => ['3M'])
      expect(page).to have_select("product[manufacturer_id]", :with_options => ['MARCONI'])
    end


    it "shows the correct selects when manufacturer is changed", :js => true do
      visit edit_product_path(editproduct.id)
      select 'Equipment', :from => "product[overallcategory_id]"
      select "SIEMENS", :from => "product[manufacturer_id]"
      expect(page).to have_select("product[modality_id]", :with_options => ["Contrast Injectors"])
      expect(page).to have_no_select("product[modtype_id]", :with_options => ["CT Scanner"])
      expect(page).to have_select("product[modtype_id]", :with_options => ['Injector MRI'])
      expect(page).to have_no_select("product[manufacturer_id]", :with_options => ['3M'])
      expect(page).to have_select("product[manufacturer_id]", :with_options => ['ABB'])
    end

  end
end
