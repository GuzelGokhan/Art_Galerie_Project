json.array! @art_pieces do |art_piece|
  json.extract! art_piece, :id, :name
end