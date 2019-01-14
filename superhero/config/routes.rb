Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :heros
  # get '/heros', to: 'heros#index', as: :heros
  # get '/heros/new', to: 'heros#new', as: :new_hero
  # get '/heros/:id', to: 'heros#show', as: :hero
  # post '/heros', to: 'heros#create'
  # get '/heros/:id/edit', to: 'heros#edit', as: :edit_hero
  # patch 'heros/:id', to: 'heros#update'
end
