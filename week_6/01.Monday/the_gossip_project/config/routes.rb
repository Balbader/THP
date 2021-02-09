Rails.application.routes.draw do
  get '/contact', to:'contact#get_in_touch'
  get '/team', to:'team#our_team'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get'/index', to: 'index#new'
  get '/post', to:'post#create_post'
  post '/post', to:'post#new_gossip'
  get "/show", to: "show#show_gossip"
  get "/show/:id", to: "show#show_gossip"
end
