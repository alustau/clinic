class Doctor::Creator < Doctor::Service
  def create(data)
    @model.create!(data)
  end
end
