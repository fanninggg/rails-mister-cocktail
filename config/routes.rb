Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
  root to: 'cocktails#index'
end


















  # resources :restaurants, only: [:index, :show, :new, :create] do
  #   resources :reviews, only: [:new, :create]
  # end

  # namespace :admin do
  #   resources :restaurants, only: [:edit, :update, :destroy]
  # end
