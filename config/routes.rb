Rails.application.routes.draw do
  get 'doses/new'
  get 'doses/create'
  get 'doses/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to:'cocktails#index'
  resources :cocktails, only: [:show, :new, :create, :destroy] do
    resources :doses, only: [ :new, :create, :destroy ]
  end
end
