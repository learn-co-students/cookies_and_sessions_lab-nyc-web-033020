Rails.application.routes.draw do

  get '/', to: redirect('/products')
  resources :products, only: [:index, :create]

  get '/products/reset', to: 'products#reset'

  post '/products/:id', to: 'products#add', as: 'add_product'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
