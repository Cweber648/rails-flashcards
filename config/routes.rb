Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  # root "sessions#new"
  root "decks#index"

  get "/decks", to: "decks#index", as: 'decks'
  get '/decks/:id', to: 'decks#show', as: 'deck'

  get '/rounds/:id', to: 'rounds#show', as: 'round'
  post '/decks/:deck_id/rounds', to: 'rounds#create'

end
