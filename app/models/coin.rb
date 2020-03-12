class Coin < ApplicationRecord
    has_many :transactions
    validates :value, presence: true
    validates :name, presence: true

    def self.total_coin_value
        coins = Coin.all
        coins.reduce(0){|sum, coin| sum + coin.value.to_f}
    end
end
