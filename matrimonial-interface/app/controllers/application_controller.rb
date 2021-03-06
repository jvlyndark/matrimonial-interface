class ApplicationController < ActionController::Base
    private
    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    helper_method :current_user, :current_user_profile, :logged_in?

    def authorize
        redirect_to login_url, alert: "Not authorized" if current_user.nil?
    end

    def current_user_profile
        @current_user_profile ||= Profile.find(session[:user_id]) if session[:user_id]
    end

    def logged_in?
        !!current_user
    end

    def create_profile_path
        redirect_to new_profile_path
    end
end
