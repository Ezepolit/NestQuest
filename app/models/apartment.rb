class Apartment < ActiveRecord::Base
	
 	belongs_to :broker
 	has_many :apartment_showings
  has_many :apartment_photos
 	has_many :showings, through: :apartment_showings

 	has_attached_file :image, styles: { large: "640x480", medium:  "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/, presence: true;
  accepts_nested_attributes_for :apartment_photos, :reject_if => :all_blank, :allow_destroy => true

  validates :title, presence: true;
	validates :neighborhood, presence: true;
	validates :price, presence: true;
end