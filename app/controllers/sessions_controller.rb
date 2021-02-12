class SessionsController < ApplicationController

    before_action :logged_in_redirect, only: [:new, :create]

    def new
    end

    def create
        user = User.find_by(username: params[:session][:username])
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            flash[:notice] = "Logged in Successfully"
            redirect_to root_path
        else
            flash[:alert] = "Wrong Credentials"
            render 'new'
        end
    end

    def destroy
        session.delete(:user_id)
        @current_user = nil
        flash[:notice] = "Logged out"
        redirect_to login_path
    end

    private

    def logged_in_redirect
        if logged_in?
            flash[:alert] = "Already logged in!!"
            redirect_to root_path
        end
    end
end