Rails.application.routes.draw do
  root "subs#index" 

  resources :subs

  # resources :subs, only: [:new, :create, :edit, :update]
  #   these do the same thing
  # resources :subs, except [:index, :show, :destroy]

  # get"/subs", to: "subs#index"
  # get"/subs/:id", to: "subs#show"
  # delete "/subs/:id", to: "subs#destroy"


end
