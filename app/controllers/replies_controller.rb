class RepliesController < ApplicationController

    def new
        @post_id = params[:post_id]
        @reply = Reply.new
    end

    def create
        @reply = Reply.new(reply_params)
        @reply.reply_datetime = Time.now
        @reply.user_id = current_user.id

        if @reply.save
            redirect_to Post.find(@reply.post_id)
          else
            render :new
          end
    end

    private
        def reply_params
            params.require(:reply).permit(:contenido, :post_id)
        end
    
end
