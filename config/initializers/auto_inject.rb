class Interview::Container
    extend Dry::Container::Mixin    
end

Interview::Container.register('service.doctor.creator') do
    Doctor::Creator.new
end

Interview::Container.register('service.doctor.lister') do
    Doctor::Lister.new
end



AutoInject = Dry::AutoInject(Interview::Container)