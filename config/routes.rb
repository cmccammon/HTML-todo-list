Rails.application.routes.draw do
  get    '/honeydos',     to: 'honeydos#index'
  get    '/honeydos/new', to: 'honeydos#new'
  get    '/honeydos/:id', to: 'honeydos#show'
  post   '/honeydos',     to: 'honeydos#create'
  put    '/honeydos/:id', to: 'honeydos#update'
  delete '/honeydos/:id', to: 'honeydos#destroy'
end
