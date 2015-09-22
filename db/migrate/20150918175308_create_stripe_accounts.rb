class CreateStripeAccounts < ActiveRecord::Migration
  def change
    create_table :stripe_accounts do |t|
      t.string :access_token
      t.string :livemode
      t.string :refresh_token
      t.string :scope
      t.string :stripe_publishable_key
      t.string :stripe_user_id
      t.string :token_type
      t.string :person_id

      t.timestamps
    end
  end
end
