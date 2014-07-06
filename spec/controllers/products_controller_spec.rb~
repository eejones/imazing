describe ProductsController do

login_user

  def valid_session
    {"warden.user.user.key" => session["warden.user.user.key"]}
  end


describe "GET new" do

    let(:current_user) { create_logged_in_user }

    it "successfully creates a product", :js => true do
      visit new_product_path(:current_user)
      fill_in "Price", :with => 3000
      select "Brazil", :from => "Country"
      select 'Equipment', :from => "product[overallcategory_id]"
      check "product[dealertype]"
      select "MRI", :from => "product[modality_id]"
      select "Magnet", :from => "product[modtype_id]"
      select "SIEMENS", :from => "product[manufacturer_id]"
      click_button "Add Product"
    end
  end
end
