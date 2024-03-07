Rails.application.routes.draw do
  devise_for :users
  root to: 'umamusumes#index'
  
  resources :umamusumes, only: [:index, :new, :create, :show, :destroy] do
    resources :races, only: [:create, :destroy]
    # umamusumes/:id/races

  end
end