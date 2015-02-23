class AddFeedbackToAdminToCommunities < ActiveRecord::Migration
  def self.up
    add_column :communities, :feedback_to_admin, :boolean, :default => false
  end

  def self.down
    remove_column :communities, :feedback_to_admin
  end
end
