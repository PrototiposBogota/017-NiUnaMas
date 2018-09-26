class AdminPagesController < ApplicationController
  def dashboard
    @details = User.get_details
  end

  def index
    
  end

end
