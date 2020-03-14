class CoinSerializer < ActiveModel::Serializer
  attributes :id, :value, :name, :quantity, :created_at, :updated_at
end
