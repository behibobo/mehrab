Rails.application.routes.draw do
  resources :fertilizers
  resources :lands
  resources :customers do
    resources :fertilizers
    resources :lands
  end
  devise_for :users
end
