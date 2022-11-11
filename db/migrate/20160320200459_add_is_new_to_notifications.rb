# frozen_string_literal: true

class AddIsNewToNotifications < ActiveRecord::Migration[5.2]
  def change
    add_column :notifications, :is_new, :boolean, default: false
  end
end
