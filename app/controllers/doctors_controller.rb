class DoctorsController < ApplicationController
    include AutoInject[
        lister: 'service.doctor.lister',
        creator: 'service.doctor.creator'
    ]

    def index
        @doctors = lister.all 
    end

    def new
        @doctor = creator.model.new
    end

    def create
        @doctor = creator.create(doctor_params)
        
        respond_to do |format|
            if @doctor.persisted?
              format.html { redirect_to doctors_url, flash: { success: 'Doctor was successfully created.'} }
            else
              format.html { render :new }
            end
        end
    end

    private
    
    def doctor_params
        params.require(:doctor).permit(:name, :crm)
    end
end
  