class Doctor::Deleter < Doctor::Service
    def delete(id)
      @model.find(id).destroy
    end
  end
  