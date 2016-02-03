json.array!(@otters) do |otter|
  json.extract! otter, :id, :name, :age, :bio
  json.url otter_url(otter, format: :json)
end
