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


    private

    def coin_params
        params.require(:coin).permit(:value, :name)
    end

end
