Rails.application.routes.draw do
  root to: 'products#index'
  devise_for :users

  
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :products, only: [ :index, :show, :update, :create, :destroy ]
      get "/", to: "products#challenge"
    end
  end
  
  resources :products
  
  # Redirect to home when the route does not exist
  get '*path' => redirect('/')
end
