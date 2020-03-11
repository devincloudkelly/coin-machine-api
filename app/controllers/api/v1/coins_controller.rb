class Api::V1::CoinsController < ApplicationController

    def test
        render json: { message: 'Hello world'}
    end
    
    def create
        @coin = Coin.new(coin_params)
        if @coin.save
            render json: @coin, status: :created
        else
            render json: { message: 'Could not create coin, please try again'}, status: :internal_server_error
        end
    end


    private

    def coin_params
        params.require(:coin).permit(:value, :name, :id)
    end

end
