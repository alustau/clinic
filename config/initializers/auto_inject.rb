class Interview::Container
    extend Dry::Container::Mixin    
end

container = Interview::Container

container.register('service.doctor.creator') do
    Doctor::Creator.new
end

container.register('service.doctor.lister') do
    Doctor::Lister.new
end

container.register('service.doctor.updater') do
    Doctor::Updater.new
end

container.register('service.doctor.deleter') do
    Doctor::Deleter.new
end

AutoInject = Dry::AutoInject(container)