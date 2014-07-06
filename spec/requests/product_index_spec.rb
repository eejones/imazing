require 'rails_helper'
require 'spec_helper'

RSpec.describe "ProductEdits", :type => :request do
  describe "GET /product_edits" do

  let(:current_user) { create_logged_in_user }

    it "has the correct fields initially" do
      visit products_path
      #check leftsidebar selectors
      expect(page).to have_select("modality_id", :with_options => ["MRI",  "Ultrasound", "Vintage"])
      expect(page).to have_select("modtype_id", :with_options => ['CT Scanner', 'Ventilator Tester', 'Injector MRI'])
      expect(page).to have_select("manufacturer_id", :with_options => ['3M', 'GE', 'BIODEX'])
      expect(page).to have_link("modtype") #check header existence
      expect(page).to have_link("5") #check pagination links
    end

    it "left sidebar searches correctly(when independent", :js => true do
      visit products_path

      click_link("modtype") #check sorting
      expect(first('tr > td:nth-child(1)')).to have_text("Ambient Air Analyzer")

      click_link("modtype") #check reverse sorting
      expect(first('tr > td:nth-child(1)')).to have_text("Xenon System")

      click_link("5") #use pagination to get to a later sort

      click_link("modtype") #check sorting backwards after forwards

      select "CT", :from => "modality_id"

      expect(page).to have_text('CT Chiller') #verify that sorting is maintained 

      click_link("manufacturer") #check sorting for another attribute

      expect(page).to have_text("ANTIQUE")

      expect(page).to have_no_select("modtype_id", :with_options => ['Injector MRI'])
      expect(page).to have_select("modtype_id", :with_options => ['CT Chiller'])

      #check that it filtered and only displaying the selected modality
      all('tr > td:nth-child(4)').each do |tr|
        expect(tr).to have_text("CT")
      end


#check with additional selection of modtype
      select "Injector CT", :from => "modtype_id"
      expect(page).to have_no_select("manufacturer_id", :with_options => ['3M'])

      all('tr > td:nth-child(1)').each do |tr|
        expect(tr).to have_text("Injector CT")
      end
#check with additional selection of manufacturer
      select "PHILIPS", :from => "manufacturer_id"
      expect(page).to have_no_select("manufacturer_id", :with_options => ['3M'])
      expect(page).to have_no_select("modtype_id", :with_options => ['Power Conditioner'])
      all('tr > td:nth-child(3)').each do |tr|
        expect(tr).to have_text("PHILIPS")
      end


    #check that All displays everything from select boxes
      select "All", :from => "modtype_id"
      select "All", :from => "modality_id"
      expect(page).to have_text("PET Mobile")
      #ensure that philips is still the only manufacturer listed
      all('tr > td:nth-child(3)').each do |tr|
        expect(tr).to have_text("PHILIPS")
      end
    end

    it "correctly jumps to product from link" do
#
     visit products_path
#
       first(:link, (first('tr > td:nth-child(1) > a').text)).click
       # save_and_open_page
       #       expect('title').to have_text("Product Show View")
       expect(page).to have_xpath("//title", :text => "Product Show View")
    end


    it "correctly uses pagination", :js => true do
#      visit products_path
    end

    it "correctly sorts columns", :js => true do
#      visit products_path
    end

    it "correctly uses auto-complete", :js => true do
#      visit products_path
    end

    it "search button works correctly within index", :js => true do
#      visit products_path
    end

  end
end
