class ApartmentPhoto < ActiveRecord::Base
  belongs_to :apartment

  has_attached_file :photos, styles: { large: "640x480", medium:  "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photos, content_type: /\Aimage\/.*\Z/, presence: true;

end
