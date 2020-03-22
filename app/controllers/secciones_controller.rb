class SeccionesController < ApplicationController
    def index
        @board_name = params[:board]
        #@board = Board.where(name:@board_name)[0]
        @posts = Post.all#.where(board:@board)
    end
    #def show
       # @post = Post.find(params[:id])
    #end
    
end