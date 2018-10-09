Rails.application.routes.draw do
  resources :sexual_aggressions
  resources :other_aggressions
  resources :aggression_details
  #the next line after the comma instructs devise for use a different controller than the one in the devise gem
  devise_for :users, controllers: {registrations: "users/registrations", sessions: "users/sessions"}
  #resources :users
  resources :categories
  resources :help_centers

  namespace 'api' do
    namespace 'v1' do
      post 'auth_user' => 'authentication#authenticate_user'
      resources :help_centers
      resources :users
    end
  end



  get 'admin_pages/dashboard'
  get 'admin_pages/users_query'
  get 'static_pages/landing'
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#landing'
end
