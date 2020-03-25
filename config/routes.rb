Rails.application.routes.draw do
  devise_for :users
  root to: "videos#index"
  resources :videos do
    collection do
      get 'search'
    end
end
end
