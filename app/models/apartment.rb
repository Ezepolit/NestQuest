class Apartment < ActiveRecord::Base
	
 	belongs_to :broker
 	has_many :apartment_showings
 	has_many :showings, through: :apartment_showings

 	has_attached_file :image, styles: { medium:  "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  	validates :title, presence: true;
  	validates :neighborhood, presence: true;
  	validates :price, presence: true;
end