# frozen_string_literal: true

module API
  class FollowSuggestionsController < ApplicationController
    before_action :authenticate_user!

    def index
      @users = current_user.people_to_follow
    end
  end
end
