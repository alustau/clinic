class Doctor::Updater < Doctor::Service
    def update(id, data)
      @model.update(id, data)
    end
  
    def find(id)
      @model.find(id)
    end
  end
  