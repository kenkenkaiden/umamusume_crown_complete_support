Rails.application.routes.draw do
  devise_for :users
  resources :umamusumes, only:[:index]
end
