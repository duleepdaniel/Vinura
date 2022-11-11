# frozen_string_literal: true

class GenerateLeadForPublishedPosts < ActiveRecord::Migration[5.2]
  def change
    reversible do |dir|
      dir.up do
        Post.find_each do |post|
          post.generate_lead!
          post.save
        end
      end

      dir.down { raise ActiveRecord::IrreversibleMigration }
    end
  end
end
