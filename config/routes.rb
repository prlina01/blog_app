Rails.application.routes.draw do
  
  root to: 'blogs#index'
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :blogs

  
end
