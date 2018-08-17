Rails.application.routes.draw do
  
  mount Ckeditor::Engine => '/ckeditor'
  resources :users, only: [:show] do
    member do
      get :toggle_subscription
    end
  end
  get 'user/show', to: 'users#show', as: 'show_user'
  resources :topics, only: [:index, :show]
  root to: 'blogs#index'
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :blogs do
    resources :comments
    member do
      get :toggle_status
    end
  end
  get 'contact_me', to: 'messages#new', as: 'new_message'
  post 'contact_me', to: 'messages#create', as: 'create_message'
  resources :contacts

end
