json.array!(@hormone_levels) do |hormone_level|
  json.extract! hormone_level, :id, :level, :min, :max
  json.url hormone_level_url(hormone_level, format: :json)
end
