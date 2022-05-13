Rails.application.routes.draw do
  root to: 'timerecords#index'
  resources :timerecords, only: [:index, :create, :update]
end
