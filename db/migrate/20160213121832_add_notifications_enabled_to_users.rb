class AddNotificationsEnabledToUsers < ActiveRecord::Migration
  def change
    add_column :users, :notifications_enabled, :boolean
  end
end