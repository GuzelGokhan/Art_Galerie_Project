class CreateShowrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :showrooms do |t|
      t.string :name
      t.references :exhibition, null: false, foreign_key: true

      t.timestamps
    end
  end
end
