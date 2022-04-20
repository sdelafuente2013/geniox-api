Rails.application.routes.draw do
  # /api/v1/users
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      # get 'users', to: 'users#index'
      resources :users, only: [:index]
    end
  end
end
