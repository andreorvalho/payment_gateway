Rails.application.routes.draw do
  namespace :payment_gateway do
    resources :payment_requests, only: [:index]
  end
end
