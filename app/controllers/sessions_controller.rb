class SessionsController < ApplicationController
      def create
        auth = request.env['omniauth.auth']
        session[:user_id] = auth['uid']
        redirect_to root_url, notice: 'Signed in successfully!'
      end
    
      def destroy
        session[:user_id] = nil
        redirect_to root_url, notice: 'Signed out successfully!'
      end
end
