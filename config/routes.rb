Rails.application.routes.draw do
  resources :contributions

  resources :share_requests

  devise_for :members
  
  root 'share_requests#index'

end
