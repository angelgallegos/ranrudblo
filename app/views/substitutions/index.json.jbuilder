json.array!(@substitutions) do |substitution|
  json.extract! substitution, :id, :replace_what, :replace_with, :substitution_type_id, :user_id
  json.url substitution_url(substitution, format: :json)
end
