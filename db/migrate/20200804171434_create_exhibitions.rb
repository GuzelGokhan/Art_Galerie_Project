class CreateExhibitions < ActiveRecord::Migration[6.0]
  def change
    create_table :exhibitions do |t|
      t.string :name
      t.boolean :open
      t.references :galerie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
