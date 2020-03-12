class Transaction < ApplicationRecord
  belongs_to :coin
  belongs_to :api_user
end
