class Api::V1::CoinsController < ApplicationController

    def create
        @coin = Coin.new(coin_params)
        if @coin.save
            render json: @coin, status: :created
        else
            render json: { message: 'Could not create coin, please ensure all required attributes are included in your request and try again'}, status: :bad_request
        end
    end

    def update
        coin = Coin.find(params[:id])
        if coin.update(coin_params)
            render json: coin, status: :accepted
        else
            render json: { message: 'Coin could not be updated. Please update your request and retry'}, status: :bad_request
        end
    end

    def delete
        coin = Coin.find(params[:id])
        temp = coin
        if coin.delete
            render json: { message: 'This coin has been deleted: ', coin: temp }, status: :accepted
        else
            render json: { message: 'There was an error deleting this coin. Please check your request and try again'}, status: :bad_request
        end
    end

    def index
        coins = Coin.all
        if coins
            render json: coins, status: :accepted
        else
            render json: { message: 'There was an error retrieving all coins. Please try again later'}, status: :bad_request
        end
    end

    def show
        if coin = Coin.find(params[:id])
            render json: coin, status: :accepted
        else
            render json: { message: 'Coin not found. Please update your paramaters and try again'}, status: :bad_request
        end
    end

    private

    def coin_params
        params.require(:coin).permit(:value, :name)
    end

end
