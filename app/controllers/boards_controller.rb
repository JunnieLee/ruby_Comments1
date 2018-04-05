#boards_controller.rb

class BoardsController < ApplicationController

	def index
		@posts = Post.all
		@post = Post.find()
	end

	def new
	end	

	def create
		title = params[:title]
		content = params[:content]

		post = Post.new(title: params[:title], content: params[:content])
		post.save

		redirect_to action: 'index'
	end

	def destroy
		post_id = params[:id]
		Post.destroy(post_id)
		redirect_to action: 'index'
	end

	def edit_view
		post_id = params[:id]
		@the_selected_post = Post.find(post_id)
	end	

	def edit
		post_id = params[:id]
		@the_selected_post = Post.find(post_id)

		@the_selected_post.title = params[:title]
		@the_selected_post.content = params[:content]
		@the_selected_post.save

		redirect_to action: 'index'
	end	

	def comment_create
		@comment = Comment.new(post_id: params[:post_id], content: params[:comment_content])
		@comment.save
		redirect_to action: 'index'
	end	

end
