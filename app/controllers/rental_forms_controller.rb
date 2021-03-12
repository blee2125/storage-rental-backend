class RentalFormsController < ApplicationController

    def index
        @rental_forms= RentalForm.all
        render json: @rental_forms
    end

    def create
        select_unit
        @rental_form= @unit.rental_forms.new(rental_forms_params)
        if @rental_form.save
            #@unit.available = false
            render json: @rental_form
        else
            render json: {error: 'error creating rental form'}
        end
    end

    def show
        select_unit
        @rental_form= @unit.rental_forms.find(params[:id])
        render json: @rental_form
    end

    def update
        @rental_form= RentalForm.find(params[:id])
        @rental_form.update(rental_forms_params)
        render json: @rental_form
    end

    def destroy
        @rental_form= RentalForm.find(params[:id])
        @rental_form.destroy
        render json: @rental_form
    end

    private

    def select_unit
        @unit= Unit.find_by(unit_number: params[:unit_number])
        if @unit
            @unit
        else
            render json: {error: 'error finding unit number'}
        end
    end

    def rental_forms_params
        params.require(:rental_form).permit(:unit_number, :customer, :comments, :unit_id)
    end

end
