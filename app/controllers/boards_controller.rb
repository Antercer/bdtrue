class BoardsController < ApplicationController
    def index
       @boards = Board.all
    end

    def show
        @board = Board.find(params[:id])
        @posts = Post.where(board_id: @board).order("post_datetime DESC")
        @users = User.all
    end

    def new
        @board = Board.new
    end

    def create
        @board = Board.new(board_params)
        @board.user_id = current_user.id

        if @board.save
          redirect_to @board
        else
          render :new
        end
    end

    private
        def board_params
            params.require(:board).permit(:name)
        end
end