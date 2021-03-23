Rails.application.routes.draw do
  resources :user_locations
  resources :users

  get 'user_locations/render_request', to: 'user_locations#render_request'
  post 'users/login', to: 'users#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
