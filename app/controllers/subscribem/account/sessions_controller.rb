require_dependency "subscribem/application_controller"

module Subscribem
  class Account::SessionsController < ApplicationController
    def new
      @user = User.new
    end

    def create
      if warden.authenticate(scope: :user)
        flash[:notice] = "You are now signed in."
        redirect_to root_path
      end
    end
  end
end