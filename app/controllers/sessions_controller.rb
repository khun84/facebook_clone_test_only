class SessionsController < ApplicationController
    def new

    end

    def create
        @user = User.find_by(email: params[:session][:email]).try(:authenticate, params[:session][:password])
        if @user
            session[:user_id] = @user.id
            flash[:notice] = 'Welcome, joshhhh@nextacademy.com!'
            redirect_to statuses_path
        else
            flash[:alert] = 'Please log in again'
            render 'new'

        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to root_path

    end


end
