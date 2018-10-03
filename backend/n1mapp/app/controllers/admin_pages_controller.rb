class AdminPagesController < ApplicationController
  def dashboard
    @details = User.get_details
  end

  def users_query
    @users = User.get_users
  end

end
