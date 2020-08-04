class ReNameArtWorkToArtPieces < ActiveRecord::Migration[6.0]
  def change
    rename_table :art_works, :art_pieces
  end
end
