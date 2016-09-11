Rails.application.routes.draw do
  get '/lets-go', to: 'sessions#create', as: 'login_callback'
end
