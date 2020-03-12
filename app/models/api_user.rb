class ApiUser < ApplicationRecord
    has_many :transactions

    def self.generate_api_key
        api_key = SecureRandom.urlsafe_base64
        api_key
    end
end
