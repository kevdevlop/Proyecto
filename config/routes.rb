Rails.application.routes.draw do
  devise_for :users, :controllers => { sessions: 'users/sessions'}
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :categories do
    get 'categories/get_categories_by'
  end
  root 'main_page#index'
end
