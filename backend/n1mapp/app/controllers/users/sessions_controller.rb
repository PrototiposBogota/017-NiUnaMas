class Users::SessionsController < Devise::SessionsController
    #skip_before_action :verify_authenticity_token 
    layout "signin"
end