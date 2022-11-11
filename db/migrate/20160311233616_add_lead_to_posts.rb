# frozen_string_literal: true

class AddLeadToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :lead, :text
  end
end
