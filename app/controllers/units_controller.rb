class UnitsController < ApplicationController
    require 'pry'
    def index
        @units= Unit.all
        render json: @units
    end

    def create
        #binding.pry

        @unit= Unit.new(unit_params)
        if @unit.save
            render json: @unit
        else
            render json: {error: 'error creating unit'}
        end
    end

    def show
        @unit= Unit.find(params[:id])
        render json: @unit
    end

    def update
        @unit= Unit.find(params[:id])
        @unit.update(unit_params)
        render json: @unit
    end

    def destroy
        @unit= Unit.find(params[:id])
        @unit.destroy
        render json: @unit
    end

    private

    def unit_params
        params.require(:unit).permit(:unit_number, :available, :likes, :id)
    end

end
