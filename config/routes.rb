Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/login' => 'logins#login'
  post '/login' => 'logins#create'

  get '/juans' => 'juans#index'
  post '/juans' => 'juans#create'
  get '/juans/new' => 'juans#new'
  get '/juans/:id/edit' => 'juans#edit'
  patch '/juans/:id' => 'juans#update'
  get '/juans/:id' => 'juans#show'
  get '/juans/delete' => 'juans#delete'
  get '/juans/:id/ask' => 'favours#new'
  post '/favours' => 'favours#create'
  
  get '/runners' => 'runners#index'
  post '/runners' => 'runners#create'
  get '/runners/new' => 'runners#new'
  get '/runners/:id/edit' => 'runners#edit'
  patch '/runners/:id' => 'runners#update'
  patch '/runners/' => 'runners#accept'
  get '/runners/:id' => 'runners#show'
  get '/runners/:id/delete' => 'runners#delete'
  
  get '/favors/new' => "favors#new"
  get '/favors/:id/delete' => "favors#delete"
  get '/favors/:id/edit' => 'favors#edit'
  patch '/favors/:id' => 'favors#update'
  post '/juan' => 'favors#create'

  get '/skills' => "skills#index"
  get '/skills/new' => "skills#new"
  post '/skills' => 'skills#create'

  #resources :logins do
  #	resources :juans
  #	resources :favours
 #	resources :runners
 # end
end
