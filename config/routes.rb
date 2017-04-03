Rails.application.routes.draw do
  get 'photos/index/:id' => 'photos#index', as: 'get_user_photos'
  get 'photos/index'
  get 'user/photos' => 'photos#fetch_comments_on_photos',
      as: 'get_comments_on_photo'
  get 'users/index' => 'users#index'
  get 'user/:id' => 'users#show', as: 'get_user'
  root 'users#index'
end
