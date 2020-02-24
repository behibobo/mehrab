class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :mobile
      t.string :nid
      t.string :father_name
      t.string :city
      t.string :address

      t.timestamps
    end
  end
end
