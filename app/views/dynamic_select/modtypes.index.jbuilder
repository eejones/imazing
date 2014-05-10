json.array!(@modtypes) do |modtype|
  json.extract! modtype, :name, :id
end

