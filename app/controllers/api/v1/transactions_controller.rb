class Api::V1::TransactionsController < ApplicationController

    def index
        if transactions = Transaction.all
            render json: transactions, status: :accepted
        else
            render json: { message: 'There was an error processing this request. Please try again later.'}, status: :bad_request
        end
    end

    private

    def transaction_params
        params.require(:transaction).permit(:transaction_type, :coin_id, :api_user_id)
    end
end
