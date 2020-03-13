class Api::V1::TransactionsController < ApplicationController

    def index
        if transactions = Transaction.all
            render json: transactions, status: :accepted
        else
            render json: { message: 'There was an error processing this request. Please try again later.'}, status: :bad_request
        end
    end
    
    def deposit
        transaction = Transaction.new(transaction_params)
        transaction.transaction_type = 'deposit'
        api_user = validate_api_key
        transaction.api_user_id = api_user.id
        coin = Coin.find(transaction.coin_id)
        if transaction.save
            coin.deposit_coin
            render json: transaction, status: :created
        elsif !transaction.valid?
            render json: { message: transaction.errors }
        else
            render json: { message: 'There was an error processing your request, please try again later.' }, status: :bad_request
        end
    end
    
    def withdrawal
        transaction = Transaction.new(transaction_params)
        transaction.transaction_type = 'withdrawal'
        api_user = validate_api_key
        transaction.api_user_id = api_user.id
        coin = Coin.find(transaction.coin_id)
        if transaction.save
            coin.withdraw_coin
            render json: transaction, status: :created
        elsif !transaction.valid?
            render json: { message: transaction.errors }
        else
            render json: { message: 'There was an error processing your request, please try again later.' }, status: :bad_request
        end
    end

    def user_transactions
        transactions = Transaction.where("api_user_id = ?", params[:id])
        if transactions && transactions.length > 0 
            render json: transactions, status: :accepted
        elsif transactions && transactions.length <= 0
            render json: { message: 'There are no transactions for this user or user does not exist' }, status: :not_found
        else
            render json: { message: 'There was an error processing your request, please try again later.' }, status: :bad_request
        end
    end


    private

    def transaction_params
        params.require(:transaction).permit(:transaction_type, :coin_id, :api_user_id)
    end
end
