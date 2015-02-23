class ChangePaymentColumnToInteger < ActiveRecord::Migration
  def self.up
    change_column :favors, :payment, 'integer USING CAST("payment" AS integer)'
  end

  def self.down
    change_column :favors, :payment, :string
  end
end
