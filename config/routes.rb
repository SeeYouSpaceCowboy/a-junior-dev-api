Rails.application.routes.draw do
  scope module: 'api' do
    namespace :v1 do
      post 'signup', to: 'users#create', as: 'signup'
      post 'login', to: 'users#login', as: 'login'

      resources :users, only: [:index, :destroy]
      get 'user', to: 'users#show', as: 'user_show'

      resources :listings, only: [:index, :create, :update, :destroy]
    end
  end
end
