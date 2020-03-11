class ApplicationController < ActionController::API
    before_action: :authorized

    def is_valid?

    end

    def authorized
        render json: { message: 'Not a valid Api key'}, status: :unauthorized unless is_valid?
    end

end
