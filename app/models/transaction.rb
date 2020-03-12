class Transaction < ApplicationRecord
  belongs_to :coin
  belongs_to :api_user

  validates :transaction_type, presence: true, inclusion: { in: %w(deposit withdrawal), message: "%{value} is not an accepted transaction type. Must be either deposit or withdrawalˀ" }
  validates :coin_id, presence: true
  validates :api_user_id, presence: true
end
