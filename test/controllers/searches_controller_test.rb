require 'test_helper'

class SearchesControllerTest < ActionController::TestCase
  setup do
    @search = searches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:searches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create search" do
    assert_difference('Search.count') do
      post :create, search: { availabilitydate: @search.availabilitydate, chiropractictype: @search.chiropractictype, condition_id: @search.condition_id, country_id: @search.country_id, dealertype: @search.dealertype, dentaltype: @search.dentaltype, drofficetype: @search.drofficetype, hospitaltype: @search.hospitaltype, imagingcentertype: @search.imagingcentertype, keywords: @search.keywords, manufacturer_id: @search.manufacturer_id, maximum_price: @search.maximum_price, minimum_price: @search.minimum_price, modality_id: @search.modality_id, modtype_id: @search.modtype_id, orthopedictype: @search.orthopedictype, overallcategory_id: @search.overallcategory_id, painmanagementtype: @search.painmanagementtype, podiatrytype: @search.podiatrytype, prefremovalmethod_id: @search.prefremovalmethod_id, rating: @search.rating, region_id: @search.region_id, urgenttype: @search.urgenttype, veterinarytype: @search.veterinarytype, year: @search.year }
    end

    assert_redirected_to search_path(assigns(:search))
  end

  test "should show search" do
    get :show, id: @search
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @search
    assert_response :success
  end

  test "should update search" do
    patch :update, id: @search, search: { availabilitydate: @search.availabilitydate, chiropractictype: @search.chiropractictype, condition_id: @search.condition_id, country_id: @search.country_id, dealertype: @search.dealertype, dentaltype: @search.dentaltype, drofficetype: @search.drofficetype, hospitaltype: @search.hospitaltype, imagingcentertype: @search.imagingcentertype, keywords: @search.keywords, manufacturer_id: @search.manufacturer_id, maximum_price: @search.maximum_price, minimum_price: @search.minimum_price, modality_id: @search.modality_id, modtype_id: @search.modtype_id, orthopedictype: @search.orthopedictype, overallcategory_id: @search.overallcategory_id, painmanagementtype: @search.painmanagementtype, podiatrytype: @search.podiatrytype, prefremovalmethod_id: @search.prefremovalmethod_id, rating: @search.rating, region_id: @search.region_id, urgenttype: @search.urgenttype, veterinarytype: @search.veterinarytype, year: @search.year }
    assert_redirected_to search_path(assigns(:search))
  end

  test "should destroy search" do
    assert_difference('Search.count', -1) do
      delete :destroy, id: @search
    end

    assert_redirected_to searches_path
  end
end
