Rails.application.routes.draw do
  resources :spotmyshots
  root "spotmyshots#index"

  get "/articles", to: "articles#index"
end