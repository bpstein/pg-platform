class RemoveTransactionProposalFromConversations < ActiveRecord::Migration
  def self.up
    remove_column :conversations, :transaction_proposal
  end

  def self.down
    add_column :conversations, :transaction_proposal, :boolean, :default => true
  end
end
