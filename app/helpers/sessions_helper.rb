module SessionsHelper
    def current_user
        unless session[:user_id].nil?
            return User.find(session[:user_id])
        end
    end
end
