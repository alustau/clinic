class Doctor::Updater < Doctor::Service
    def update(id, data)
      @model.update(id, data)
    end
  end
  