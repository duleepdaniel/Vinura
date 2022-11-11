module API
  module Responses
    class LikesController < API::LikesController
      private

      def set_likeable
        @likeable = Response.find(params[:response_id])
      end
    end
  end
end
