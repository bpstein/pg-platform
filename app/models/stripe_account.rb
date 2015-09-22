# == Schema Information
#
# Table name: stripe_accounts
#
#  id                     :integer          not null, primary key
#  access_token           :string(255)
#  livemode               :string(255)
#  refresh_token          :string(255)
#  scope                  :string(255)
#  stripe_publishable_key :string(255)
#  stripe_user_id         :string(255)
#  token_type             :string(255)
#  person_id              :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class StripeAccount < ActiveRecord::Base
  attr_accessible :access_token, :livemode, :person_id, :refresh_token, :scope, :stripe_publishable_key, :stripe_user_id, :token_type
  belongs_to :person
end