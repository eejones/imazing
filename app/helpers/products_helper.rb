module ProductsHelper

  def myproduct(current_user)
    self.user == current_user
  end

end
