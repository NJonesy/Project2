Rails.application.routes.draw do

  resources :videos, :pictures, :players

  devise_for :teams
  resources :teams



  root "teams#index"
 
end
