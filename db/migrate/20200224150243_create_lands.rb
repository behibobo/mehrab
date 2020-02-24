class CreateLands < ActiveRecord::Migration[6.0]
  def change
    create_table :lands do |t|
      t.integer :land_type
      t.integer :area
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
