class DoctorsController < ApplicationController
    before_action :set_doctor, only: [:edit]

    include AutoInject[
        lister: 'service.doctor.lister',
        creator: 'service.doctor.creator',
        updater: 'service.doctor.updater',
        deleter: 'service.doctor.deleter',
    ]

    def index
        @doctors = lister.all 

        respond_to do |format|
            format.html { render :index, status: :ok, location: @contact }
            format.json { render :index, status: :ok, location: @contact }
        end
    end

    def new
        @doctor = creator.model.new
    end

    def edit
    end

    def create
        @doctor = creator.create(doctor_params)
        
        respond_to do |format|
            if @doctor.valid?
              format.html { redirect_to doctors_url, flash: { success: 'Doctor was successfully created.'} }
            else
              format.html { render :new }
            end
        end
    end

    def update
        respond_to do |format|
            if updater.update(params[:id], doctor_params)
              format.html { redirect_to doctors_url, flash: { success: 'Doctor was successfully updated.'} }
            else
              format.html { render :edit }
            end
        end
    end

    def destroy
        deleter.delete(params[:id])
        
        respond_to do |format|
            format.html { redirect_to doctors_url, flash: {success: 'Doctor was successfully removed.'} }
        end
    end

    private
    
    def doctor_params
        params.require(:doctor).permit(:name, :crm)
    end

    def set_doctor
        @doctor = lister.find(params[:id])
    end
end
  