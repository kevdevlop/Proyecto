class BillingBuy < ApplicationRecord
  belongs_to :sale
  belongs_to :client
  enum method_pay: [:credit_card, :paypal]
  validates :method_pay, :client_id, :sale_id, presence: true
end
