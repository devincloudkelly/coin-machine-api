class Coin < ApplicationRecord
    has_many :transactions
    validates :value, presence: true
    validates :name, presence: true

    def self.total_coin_value
        coins = Coin.all
        coins.reduce(0){|sum, coin| sum + (coin.value.to_f * coin.quantity.to_i)}.round(2)
    end

    def deposit_coin
        self.quantity += 1
        self.save
    end

    def withdraw_coin
        self.quantity -= 1
        self.save
    end
end
