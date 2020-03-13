sclass AdminMailer < ApplicationMailer
    default to: -> { Admin.pluck(:email) },
            from: 'notifications@coin-machine-api.com'

    def low_coin_email(coin)
        @coin = coin
        @total_value = Coin.total_coin_value
        mail(subject: "#{@coin.name}s are running low")
    end
end
