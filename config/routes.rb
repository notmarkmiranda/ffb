Rails.application.routes.draw do

  root "pages#show"

  get '/lets-go', to: 'sessions#create', as: 'login_callback'
end
