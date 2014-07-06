require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { Managementtype: @product.Managementtype, autorenew: @product.autorenew, availability: @product.availability, availabilitydate: @product.availabilitydate, chiropractictype: @product.chiropractictype, condition: @product.condition, country: @product.country, dealertype: @product.dealertype, dentaltype: @product.dentaltype, drofficetype: @product.drofficetype, hospitaltype: @product.hospitaltype, imagingcentertype: @product.imagingcentertype, listedon: @product.listedon, listeduntil: @product.listeduntil, manufacturer: @product.manufacturer, message_id: @product.message_id, modality: @product.modality, orthopedictype: @product.orthopedictype, pain: @product.pain, podiatrytype: @product.podiatrytype, prefremovalmethod: @product.prefremovalmethod, price: @product.price, rating: @product.rating, region: @product.region, serial: @product.serial, transaction_id: @product.transaction_id, type: @product.type, urgenttype: @product.urgenttype, user: @product.user, veterinarytype: @product.veterinarytype, warranty: @product.warranty, whattype: @product.whattype, year: @product.year }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { Managementtype: @product.Managementtype, autorenew: @product.autorenew, availability: @product.availability, availabilitydate: @product.availabilitydate, chiropractictype: @product.chiropractictype, condition: @product.condition, country: @product.country, dealertype: @product.dealertype, dentaltype: @product.dentaltype, drofficetype: @product.drofficetype, hospitaltype: @product.hospitaltype, imagingcentertype: @product.imagingcentertype, listedon: @product.listedon, listeduntil: @product.listeduntil, manufacturer: @product.manufacturer, message_id: @product.message_id, modality: @product.modality, orthopedictype: @product.orthopedictype, pain: @product.pain, podiatrytype: @product.podiatrytype, prefremovalmethod: @product.prefremovalmethod, price: @product.price, rating: @product.rating, region: @product.region, serial: @product.serial, transaction_id: @product.transaction_id, type: @product.type, urgenttype: @product.urgenttype, user: @product.user, veterinarytype: @product.veterinarytype, warranty: @product.warranty, whattype: @product.whattype, year: @product.year }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
