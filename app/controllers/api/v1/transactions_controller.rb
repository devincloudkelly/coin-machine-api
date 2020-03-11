class Api::V1::TransactionsController < ApplicationController

    private

    def transaction_params
        params.require(:transaction).permit(:transaction_type, :coin_id, :api_user_id)
    end
end
