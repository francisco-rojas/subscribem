module Subscribem
  class ApplicationController < ActionController::Base
    helper_method :current_account, :current_user, :user_signed_in?

    def current_account
      if user_signed_in?
        @current_account ||= begin
          account_id = warden.user(scope: :account)
          Subscribem::Account.find(account_id)
        end
      end
    end

    def current_user
      if user_signed_in?
        @current_user ||= begin
          user_id = warden.user(scope: :user)
          Subscribem::User.find(user_id)
        end
      end
    end

    def user_signed_in?
      warden.authenticated?(:user)
    end

    def authenticate_user!
      unless user_signed_in?
        flash[:notice] = "Please sign in."
        redirect_to "/sign_in"
      end
    end

    protected
      def warden
        env["warden"]
      end
  end
end
