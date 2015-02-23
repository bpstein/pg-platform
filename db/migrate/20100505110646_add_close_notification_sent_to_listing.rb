class AddCloseNotificationSentToListing < ActiveRecord::Migration
  def self.up
    add_column :listings, :close_notification_sent, :boolean, :default => false
  end

  def self.down
    remove_column :listings, :close_notification_sent
  end
end
