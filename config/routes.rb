Rails.application.routes.draw do
  root "twitters#top"

  resources :twitters do
    collection do
      get "top"
      post "confirm"
    end
  end
end
