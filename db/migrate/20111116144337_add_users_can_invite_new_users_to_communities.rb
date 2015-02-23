class AddUsersCanInviteNewUsersToCommunities < ActiveRecord::Migration
  def self.up
    add_column :communities, :users_can_invite_new_users, :boolean, :default => false
  end

  def self.down
    remove_column :communities, :users_can_invite_new_users
  end
end
