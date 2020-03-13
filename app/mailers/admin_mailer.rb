class AdminMailer < ApplicationMailer
    default to: -> { Admin.pluck(:email) },
            from: 'notifications@example.com'

    def low_coin_email
        @coin = params[:coin]
        @total_value = Coin.total_coin_value
        mail(subject: "#{@coin.name}s are running low")
    end
end
