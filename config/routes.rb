Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  #get '/', to: 'home#index', as: 'home'
  #get '/cards/:id', to: 'cards#show' =>mesmo codigo criado com resources(linha de codigo abaixo)
  #resources :cards, only: [:show, :index, :new, :create, :edit, :update]
  resources :cards
end
