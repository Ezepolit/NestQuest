class AddAttachmentPhotosToApartmentPhotos < ActiveRecord::Migration
  def self.up
    change_table :apartment_photos do |t|
      t.attachment :photos
    end
  end

  def self.down
    remove_attachment :apartment_photos, :photos
  end
end
