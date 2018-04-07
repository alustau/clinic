class Doctor::Service
    attr_reader :model

    def initialize(model = ::Doctor)
        @model = model
    end
end