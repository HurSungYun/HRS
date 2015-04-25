class SessionsController < ApplicationController
    def create
        user = User.omniauth(env['omniauth.auth'])
        session[:user_id] = user.id
        redirect_to root_url
    end

    def new
        redirect_to '/auth/facebook'
    end
    
    def destroy
        session[:user_id] = nil
        redirect_to root_url
    end
end
