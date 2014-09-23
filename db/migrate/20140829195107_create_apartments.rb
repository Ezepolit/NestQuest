class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :title
      t.string :neighborhood
      t.integer :price
      t.integer :bedrooms
      t.integer :bathrooms
      t.text :description
      t.date :move_date

      t.timestamps
    end
  end
end
