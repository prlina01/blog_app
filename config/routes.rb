Rails.application.routes.draw do
  
  resources :topics, only: [:index, :show]
  root to: 'blogs#index'
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :blogs do
    resources :comments
    member do
      get :toggle_status
    end
  end
  
end
