Rails.application.routes.draw do
  root to: 'web/welcome#index'
  scope module: :web do
    resources :conversions, only: [:create, :show, :update]
  end
  namespace :api do
    scope module: :external do
      resources :conversions, only: :index
    end
  end
end
