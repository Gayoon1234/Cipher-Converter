Rails.application.routes.draw do
  get '/hex', to: 'static_pages#hex'
  get '/binary', to: 'static_pages#binary'
  get '/home', to:'static_pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
end
