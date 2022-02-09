Rails.application.routes.draw do

  root 'friends#index'

  get '/friends' => 'friends#index'
  get '/new_friend' => 'friends#new'
  post '/new_friend' => 'friends#create'
  get '/edit/:id/friend' => 'friends#edit', as: 'edit_friend'
  put '/edit/:id/friend' => 'friends#update', as: 'update_friend'
  delete '/:id/friend' => 'friends#destroy', as: 'delete_friend'

end