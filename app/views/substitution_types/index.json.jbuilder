json.array!(@substitution_types) do |substitution_type|
  json.extract! substitution_type, :id, :name
  json.url substitution_type_url(substitution_type, format: :json)
end
