Rails.application.routes.draw do
  devise_for :users
  root to: 'umamusumes#index'
  
  resources :umamusumes, only: [:index, :new, :create, :show, :destroy] do
    resources :races, only: [:destroy]
    post 'races/:race_id', to: 'races#create', as: :umamusume_races
  end
  
end