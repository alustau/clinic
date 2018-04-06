class Doctor::Lister < Doctor::Service
  def all
    @model.all
  end
end
