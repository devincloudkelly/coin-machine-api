class ApplicationController < ActionController::API
    before_action :authorized

    def auth_header
        request.headers['Authorization']
    end

    def api_key
        if auth_header
            api_key = auth_header.split(' ')[1]
        end
    end

    def validate_api_key
        if api_key
            valid_key = ApiUser.find_by(api_key: api_key)
            # valid_key = 'yrw_Ae6VGv4kqvwvozfn9g'
        end
    end

    def is_valid?
        !!validate_api_key
    end

    def authorized
        render json: { message: 'Not a valid Api key'}, status: :unauthorized unless is_valid?
    end

end
