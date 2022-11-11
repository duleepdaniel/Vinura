# frozen_string_literal: true

module API
  module Responses
    class BookmarksController < API::BookmarksController
      private

      def set_bookmarkable
        @bookmarkable = Response.find(params[:response_id])
      end
    end
  end
end
