Rails.application.routes.draw do

resources :users, only: [:show, :new, :create, :destroy] do 
  resources :products, only: [:show, :new, :create, :destroy, :index] do
  	resources :bids, only: [:create]
  end
end

get "/" => "sessions#new"
resources :sessions, only: [:destroy, :create]

get "/products/all" => "products#all_products"
end

