Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'map#index'

  get 'map/create'

  post 'map/real_create'

  get 'map/read/:id' => 'map#read'
end
