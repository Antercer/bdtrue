class BoardsController < ApplicationController
    def index
       @boards = Board.all
    end

    def show
        @board = Board.find(params[:id])
        @posts = Post.all
    end
    
end