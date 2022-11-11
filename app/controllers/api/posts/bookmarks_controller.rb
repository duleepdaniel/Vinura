module API
  module Posts
    class BookmarksController < API::BookmarksController
      private

      def set_bookmarkable
        @bookmarkable = Post.find(params[:post_id])
      end
    end
  end
end
