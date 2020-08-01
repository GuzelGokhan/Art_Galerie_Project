json.array! @artists do |artist|
  json.extract! artist, :id, :first_name, :last_name, :country
end