class TransactionSerializer < ActiveModel::Serializer
  has_one :coin
  has_one :api_user
  attributes :id, :transaction_type, :created_at
end
