class AddStripeTokenToTransaction < ActiveRecord::Migration
  def change
    add_column :transactions, :stripe_token, :text
  end
end
