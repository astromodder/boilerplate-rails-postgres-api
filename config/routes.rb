Rails.application.routes.draw do
  concern :api_base do
    resources :users
  end

  namespace :v1 do
    concerns :api_base
  end
end
