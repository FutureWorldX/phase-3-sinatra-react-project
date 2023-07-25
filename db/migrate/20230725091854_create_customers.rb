class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :phone_no
      t.integer :id_number
      t.string :email_address
      t.string :po_box
      t.text :local_address
      t.string :county
      t.string :city
      t.timestamps
    end
  end
end