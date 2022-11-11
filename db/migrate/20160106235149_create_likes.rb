class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.string :likeable_type
      t.integer :likeable_id
      t.integer :user_id

      t.timestamps null: false
    end

    add_index :likes, %i[likeable_type likeable_id]
    add_index :likes, :user_id
  end
end
