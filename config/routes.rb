Rails.application.routes.draw do
  get 'user/show/:id', to: 'user#show', as:'user'
  resources :user
  resources :city
  resources :gossip
  resources :root
  resources :contact
  resources :team

end
