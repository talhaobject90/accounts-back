Rails.application.routes.draw do
  resources :partnersdailies
  resources :dailies
  devise_for :users, defaults: { format: :json } ,controllers: { sessions: 'sessions' }

  
end
