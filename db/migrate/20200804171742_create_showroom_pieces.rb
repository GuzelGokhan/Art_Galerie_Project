class CreateShowroomPieces < ActiveRecord::Migration[6.0]
  def change
    create_table :showroom_pieces do |t|
      t.string :position
      t.references :showroom, null: false, foreign_key: true
      t.references :art_piece, null: false, foreign_key: true

      t.timestamps
    end
  end
end
