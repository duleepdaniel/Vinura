# frozen_string_literal: true

module Users
  class SessionsController < Devise::SessionsController
    before_action :redirect_admin_user, only: [:new]
    # before_filter :configure_sign_in_params, only: [:create]

    # GET /resource/sign_in
    # def new
    #   super
    # end

    # POST /resource/sign_in
    # def create
    #   super
    # end

    protected

    def redirect_admin_user
      redirect_to root_url, alert: 'Please sign out of admin session' if admin_signed_in?
    end

    # If you have extra params to permit, append them to the sanitizer.
    # def configure_sign_in_params
    #   devise_parameter_sanitizer.for(:sign_in) << :attribute
    # end
  end
end
