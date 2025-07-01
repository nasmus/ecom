Rails.application.routes.draw do
  resources :line_items
  resources :carts
  get "categories/index"
  get "products/index"
  namespace :admin do
    resources :orders do
      member do
        patch :mark_as_fulfilled
      end
    end
    resources :products do
      resources :stocks
    end
    resources :categories
  end
  devise_for :admins

  resources :categories do 
    collection do
      get 'all'
    end
  end
  resources :products do
    collection do
      get 'all'
    end
  end

  root to: "home#index"

  authenticated :admin_user do
    root to: "admin#index", as: :admin_root
  end

  get "admin" => "admin#index"

end
