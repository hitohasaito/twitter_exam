Rails.application.routes.draw do
  resources :twitters do
  collection do
    get "top"
  end
end
  root "twitters#top"
end
