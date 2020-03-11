class Api::V1::CoinsController < ApplicationController

    def test
        render json: { message: 'Hello world'}
    end

    def create
        @coin = Coin.new(coin_params)
        if @coin.save
            render json: @coin, status: :created
        else
            render json: { message: 'Could not create coin, please ensure all parameters are present and try again'}, status: :bad_request
        end
    end


    private

    def coin_params
        params.require(:coin).permit(:value, :name)
    end

end
