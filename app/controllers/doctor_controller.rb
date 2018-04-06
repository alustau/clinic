class DoctorController < ApplicationController
    include AutoInject[lister: 'service.doctor.lister']

    def index
        @doctors = lister.all 
    end    
end
  