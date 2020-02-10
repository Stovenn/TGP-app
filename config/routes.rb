Rails.application.routes.draw do
  get 'user/show/:id', to: 'user#show', as:'user'
  get 'gossip/index'
  get 'gossip/show/:id', to: 'gossip#show', as:'gossip'
  get '/welcome/:first_name', to: 'root#index', as:'index'
  get 'contact/show', to: 'contact#show'
  get 'team/show', to: 'team#show'
end
