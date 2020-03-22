class PostsController < ApplicationController
    before_action :authenticate_user!, except: [:show]
    
    def show
        @post = Post.find(params[:id])
    end

    def new
        @board_id = params[:board_id]
        @post = Post.new
    end

    def destroy
        post = Post.find(params[:id])
        post.destroy
        redirect_to '/seccion'
    end

    def create
        @post = Post.new(post_params)
        
        @post.post_datetime = Time.now
        
        if @post.save
          redirect_to @post
        else
          render :new
        end
    end
    
    private
        def post_params
                params.require(:post).permit(:title, :content, :imagen_url)
        end
    
end