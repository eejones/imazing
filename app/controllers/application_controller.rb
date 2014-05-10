class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  include ApplicationHelper

  helper_method :myproduct

    def myproduct(current_user)
      self.user == current_user
    end


  protected
    #to allow username or email at login
    def configure_permitted_parameters
      #sign in
      devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:username, :email) }

      #sign up
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :fname, :lname, :company, :phonecountrycode, :officephone, :mobilephone, :anonymous, :address, :latitude, :longitude, :dealertype, :hospitaltype, :orthopedictype, :imagingcentertype, :drofficetype, :urgenttype, :painmanagementtype, :veterinarytype, :chiropractictype, :podiatrytype, :dentaltype, :email, :password, :password_confirmation) }

      #edit user
      devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :fname, :lname, :company, :phonecountrycode, :officephone, :mobilephone, :anonymous, :address, :latitude, :longitude, :dealertype, :hospitaltype, :orthopedictype, :imagingcentertype, :drofficetype, :urgenttype, :painmanagementtype, :veterinarytype, :chiropractictype, :podiatrytype, :dentaltype, :email, :password, :password_confirmation, :current_password) }

=begin
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(username: [], fname: [],	lname: [],	company: [],	phonecountrycode: [],	officephone: [],	mobilephone: [], anonymous: [],	address: [], latitude: [], longitude: [], 	dealertype: [], hospitaltype: [], orthopedictype: [], imagingcentertype: [], drofficetype: [], urgenttype: [], painmanagementtype: [], veterinarytype: [], chiropractictype: [], podiatrytype: [], dentaltype: [], :email, :password, :password_confirmation) }
=end

    end

end
