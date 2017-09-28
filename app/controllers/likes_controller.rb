class LikesController < ApplicationController
    def new
        @like = Like.new
    end

    def create
        like = Like.new
        like.user_id = like_params[:user]
        like.status_id = like_params[:status]

        status = Status.find(like_params[:status])
        if like.save
            flash[:notice] = "You liked #{status.title}!"
        else
            flash[:alert] = like.errors.messages[:status_id][0]
        end
        redirect_to root_path

    end

    def destroy
        like = Like.find(params[:id])

        if like.present?
            like.destroy
            flash[:notice] = 'You unlike.'
            redirect_to status_path(like.status_id)
        end
    end

    private

    def like_params
        params.require(:like).permit(:user, :status)
    end


end
