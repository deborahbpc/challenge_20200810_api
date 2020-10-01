Rails.application.routes.draw do
  devise_for :users

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :products, only: [ :index, :show, :update, :create, :destroy ]
      get "/", to: "products#challenge"
    end
  end
  
  root to: 'pages#home'
end
