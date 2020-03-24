class SubadminController < ApplicationController
    def new
        @board_id = params[:board_id]
        @subadmin = Subadmin.new
    end

    def create
        @subadmin = Subadmin.new(subadmin_params)
        @subadmin.user1_id = current_user.id

        if @subadmin.save
            redirect_to '/index'
          else
            render :new
          end
    end

    private
        def subadmin_params
            params.require(:subadmin).permit(:user2_id, :board_id)
        end
    
end
