class CreateFertilizers < ActiveRecord::Migration[6.0]
  def change
    create_table :fertilizers do |t|
      t.integer :f_type
      t.integer :amount
      t.integer :price
      t.date :date

      t.timestamps
    end
  end
end
