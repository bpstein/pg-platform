class StripeAccountsController < ApplicationController

  def account_connection_callback
    options = {
      :site => 'https://connect.stripe.com',
      :authorize_url => '/oauth/authorize',
      :token_url => '/oauth/token'
    }
    
    client = OAuth2::Client.new(APP_CONFIG.stripe_client_id, APP_CONFIG.stripe_api_secret_key, options)

    # Pull the authorization_code out of the response
    code = params[:code]

    # Make a request to the access_token_uri endpoint to get an access_token
    resp = client.auth_code.get_token(code, :params => {:scope => 'read_write'})

    StripeAccount.create(
        token_type: resp.params["token_type"], stripe_user_id: resp.params["stripe_user_id"],
        stripe_publishable_key: resp.params["stripe_publishable_key"], scope: resp.params["scope"],
        livemode: resp.params["livemode"], access_token: resp.token, refresh_token: resp.refresh_token,
        person_id: @current_user.id
     )

    redirect_to "/"
  end

end