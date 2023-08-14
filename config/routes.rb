

Rails.application.routes.draw do
  resources :userfinas, only: [:index, :show, :create]
  resources :users, only: [:index, :show, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


