# frozen_string_literal: true

class AddLowercaseNameToTags < ActiveRecord::Migration[5.2]
  def change
    add_column :tags, :lowercase_name, :string
  end
end
