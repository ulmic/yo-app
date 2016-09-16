Rails.application.routes.draw do
  root to: 'web/welcome#index'
  scope module: :web do
    resources :conversions, only: [:create, :show]
  end
end
