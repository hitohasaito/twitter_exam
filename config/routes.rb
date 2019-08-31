Rails.application.routes.draw do
  resources :twitters do
  collection do
    get "top"
    post "confirm"
  end
end
  root "twitters#top"
end
