Rails.application.routes.draw do
  root 'users#index'
  get 'photos/index/:id' => 'photos#index', as: 'get_user_photos'
  get 'photos/index'
  get '/users/index' => 'users#index'
  get '/user/:id' => 'users#show', as: 'get_user'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
