# frozen_string_literal: true

class AddFeaturedToTags < ActiveRecord::Migration[5.2]
  def change
    add_column :tags, :featured, :boolean, default: false
  end
end
