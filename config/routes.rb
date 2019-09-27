Rails.application.routes.draw do
  root 'estimates#index'
  resources :estimates do
  end
end
