Rails.application.routes.draw do
  get '/500', to: 'rents#home'
  resources :contacts
  resources :tour_services
root :to => 'rents#home'
  resources :taxi_sevices
  devise_for :users
  resources :rules
  get 'taxi_photos/gallery' => 'taxi_photos#gallery'
  get 'tour_photos/gallery' => 'tour_photos#gallery'
  get 'map' => 'map#index'
  get 'map/get_map/:z/:x/:y.:format' => 'map#get_map'
  get 'map/save_point' => 'map#save_point'
  get 'rents/home' => 'rents#home'
  get 'rents/gallery/:id' => 'rents#gallery'
  post 'rents/query' => 'rents#query'
  get 'rents/all_points' => 'rents#all_points'
  resources :cartypes
  resources :locations
  resources :rents
  resources :services
  resources :languages
  resources :facilities
  resources :rent_images
  resources :tour_images
  resources :taxi_images
  resources :taxi_photos
  resources :tour_photos
  
  post 'tour_services/mail' => 'tour_services#mail'
  post 'rents/mail' => 'rents#mail'
  post 'rents/mail_us' => 'rents#mail_us'
  post 'taxi_sevices/mail' => 'taxi_sevices#mail'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
