class CreateApartmentShowings < ActiveRecord::Migration
  def change
    create_table :apartment_showings do |t|
      t.references :apartment, index: true
      t.references :showing, index: true

      t.timestamps
    end
  end
end
