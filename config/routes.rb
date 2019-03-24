Rails.application.routes.draw do

  root :to => "pages#home"
  get "/home" => "pages#home"
  get "/contacts/new" => "contacts#new"
  get "/contacts/create" => "contacts#create"

  resources :contacts, only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
