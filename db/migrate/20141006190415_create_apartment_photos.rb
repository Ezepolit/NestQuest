class CreateApartmentPhotos < ActiveRecord::Migration
  def change
    create_table :apartment_photos do |t|
      t.references :apartment, index: true

      t.timestamps
    end
  end
end
