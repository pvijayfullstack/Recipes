
class HomeController < ApplicationController
  before_filter :authenticate_user!

  def index
     redirect_to recipes_path
  end

end