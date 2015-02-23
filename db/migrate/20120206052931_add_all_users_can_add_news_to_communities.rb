class AddAllUsersCanAddNewsToCommunities < ActiveRecord::Migration
  def self.up
    add_column :communities, :all_users_can_add_news, :boolean, :default => false
  end

  def self.down
    remove_column :communities, :all_users_can_add_news
  end
end
