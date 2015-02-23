class AddTransactionAgreementInUseToCommunity < ActiveRecord::Migration
  def change
    add_column :communities, :transaction_agreement_in_use, :boolean, :default => false, :after => :consent
  end
end
