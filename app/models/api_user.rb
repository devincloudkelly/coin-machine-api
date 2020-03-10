class ApiUser < ApplicationRecord
    

    def self.generate_api_key
        api_key = SecureRandom.urlsafe_base64
        api_key
    end
end
