# Preview all emails at http://localhost:3000/rails/mailers/admin_mailer
class AdminMailerPreview < ActionMailer::Preview
    def low_coin_email
        AdminMailer.with(coin: Coin.first).low_coin_email
    end
end
