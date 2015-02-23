class AddPollsEnabledToCommunities < ActiveRecord::Migration
  def self.up
    add_column :communities, :polls_enabled, :boolean, :default => false
  end

  def self.down
    remove_column :communities, :polls_enabled
  end
end
