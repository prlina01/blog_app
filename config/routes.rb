Rails.application.routes.draw do
  
  mount Ckeditor::Engine => '/ckeditor'
  get 'users/show'
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

end
