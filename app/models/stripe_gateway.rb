class StripeGateway

  def initialize
    Stripe.api_key = APP_CONFIG.stripe_api_secret_key
  end

  def charge(transaction, amount)
    charge = Stripe::Charge.create({
      :amount => (amount * 100).to_i,
      :currency => "usd",
      :source => transaction.stripe_token,
      :description => transaction.listing.description,
      :application_fee => ((amount * 100) * 0.1).to_i,
      :destination => transaction.listing.stripe_account_id
    })
  end

end