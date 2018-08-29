Rails.application.routes.draw do
  devise_for :users
  resources :categories
  resources :help_centers

  namespace 'api' do
    namespace 'v1' do
      post 'auth_user' => 'authentication#authenticate_user'
      resources :help_centers
    end
  end



  get 'admin_pages/dashboard'
  get 'static_pages/landing'
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#landing'
end
