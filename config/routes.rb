Rails.application.routes.draw do
  devise_for :users
  root to: 'umamusumes#index'
  resources :umamusumes, only:[:index]
end
