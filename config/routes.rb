Rails.application.routes.draw do

	get '/boards', to: 'boards#index'
	get '/boards/new', to: 'boards#new'
	post '/boards', to: 'boards#create'
	delete '/boards/destroy/:id', to: 'boards#destroy'
	get '/boards/edit_view/:id', to: 'boards#edit_view'
    post '/boards/edit/:id', to: 'boards#edit'

    post '/boards/:post_id/comment_create', to: 'boards#comment_create'

end
