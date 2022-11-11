# frozen_string_literal: true

module API
  class TagFollowersController < ApplicationController
    def index
      tag = Tag.find(params[:tag_id])
      @followers = tag.followers
    end
  end
end
