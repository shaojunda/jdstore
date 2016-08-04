Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :products
    resources :uses do
      member do
        get :upgrade_to_admin
        get :degrade_to_user
      end
    end
  end

  resources :products

  resources :users do
    member do
      get :like
      get :unlike
    end
    collection do
      get :bookmarks
    end
  end
  root 'products#index'
end
