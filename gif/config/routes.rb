Rails.application.routes.draw do
  get '/gif/:id' => 'application#show'
  get '/new_gif' => 'application#new'
  get '/create_gif' => 'application#create'
  get '/gif/:id/edit' => 'application#edit'
  get '/update_gif/:id' => 'application#update'
  get '/gif/:id/destroy' => 'application#destroy'
  get '/gifs' => 'application#index'
#   get '/gif/1' => 'application#first'
#   get 'gif/2' => 'application#second'
#   get 'gif/3' => 'application#third'
end
