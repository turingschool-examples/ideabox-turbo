Rails.application.routes.draw do
  root to: 'ideas#index'
  post '/ideas', to: 'ideas#create'
end
