class AddAttachmentImageToShowings < ActiveRecord::Migration
  def self.up
    change_table :showings do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :showings, :image
  end
end
