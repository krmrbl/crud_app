Rails.application.routes.draw do

  root 'friends#index'

  get '/friends' => 'friends#index'
  get '/friend/new' => 'friends#new'
  post '/friend/new' => 'friends#create'
  get '/friends/:id/show' => 'friends#show', as: 'show_friend'
  get '/friends/:id/edit' => 'friends#edit', as: 'edit_friend'
  put '/friends/:id/edit' => 'friends#update', as: 'update_friend'
  get '/friends/:id' => 'friends#destroy', as: 'delete_friend'

end