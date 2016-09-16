Rails.application.routes.draw do
  root to: 'web/welcome#index'
  namespace :api do
    scope module: :internal do
      resources :conversions, only: :create
    end
  end
end
