json.array!(@manufacturers) do |manufacturer|
  json.extract! manufacturer, :name, :id
end

