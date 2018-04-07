json.array!(@doctors) do |doctor|
    json.extract! doctor, :id, :name, :crm
end