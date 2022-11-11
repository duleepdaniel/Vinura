# frozen_string_literal: true

class AddResponsesCountToPosts < ActiveRecord::Migration[5.2]
  def up
    add_column :posts, :responses_count, :integer, null: false, default: 0
    # reset cached counts for posts with responses
    ids = Set.new
    Response.all.find_each { |r| ids << r.post_id }
    ids.each do |post_id|
      Post.reset_counters(post_id, :responses)
    end
  end

  def down
    remove_column :posts, :responses_count
  end
end
