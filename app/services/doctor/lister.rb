class Doctor::Lister < Doctor::Service
  def all
    @model.all
  end

  def find(id)
    @model.find(id)
  end
end
