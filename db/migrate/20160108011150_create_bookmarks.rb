# frozen_string_literal: true

class CreateBookmarks < ActiveRecord::Migration[5.2]
  def change
    create_table :bookmarks do |t|
      t.string :bookmarkable_type
      t.integer :bookmarkable_id
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end

    add_index :bookmarks, %i[bookmarkable_type bookmarkable_id]
  end
end
