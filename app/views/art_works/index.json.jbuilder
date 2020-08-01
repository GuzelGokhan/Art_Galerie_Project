json.array! @art_works do |art_work|
  json.extract! art_work, :id, :name
end