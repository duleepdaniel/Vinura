# frozen_string_literal: true

module API
  class UsersController < ApplicationController
    def show
      @user = User.find(params[:id])
    end
  end
end
