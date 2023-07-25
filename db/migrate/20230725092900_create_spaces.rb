class CreateSpaces < ActiveRecord::Migration[6.1]
  def change
    create_table :spaces do |t|
      t.string :space_type
      t.string :size
      t.string :style
      t.integer :price_per_unit
      t.integer :length
      t.integer :width
      t.integer :height
      t.string :location
      t.text :description
      t.timestamps
    end
  end
end