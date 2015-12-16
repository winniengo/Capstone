Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]

  namespace :api, defaults: { format: :json } do
    resources :benches, only: [:index, :create, :show] # TODO :destroy, :update
  end

  root to: 'static_pages#root'
end
