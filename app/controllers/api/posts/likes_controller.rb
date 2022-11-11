
module API
  module Posts
    class LikesController < API::LikesController
      private

      def set_likeable
        @likeable = Post.find(params[:post_id])
      end
    end
  end
end
