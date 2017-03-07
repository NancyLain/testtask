class PostsController < ApplicationController

	def index
		@posts = Post.all
		@post = Post.new
	end
	
	def create
		@posts = Post.all
		@post = Post.new(post_params)

		respond_to do |format|
			if @post.save
				format.html { redirect_to root_path, notice: 'Post was successfully created.' }
				format.js
			else
				redirect_to index
			end
		end
	end

	private 

	def post_params
		params.require(:post).permit(:title) 
	end

end
