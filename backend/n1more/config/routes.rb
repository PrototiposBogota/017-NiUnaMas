Rails.application.routes.draw do
  resources :perpetrators
  resources :institutions
  resources :attention_centers
  resources :other_aggressions
  resources :sexual_aggressions
  resources :aggression_details
  resources :victims
  resources :posts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
