class Apartment < ActiveRecord::Base
	
 	belongs_to :broker
 	has_many :apartment_showings
  has_many :apartment_photos
 	has_many :showings, through: :apartment_showings

 	has_attached_file :image, :styles => { 
                        :s_150 => "150x150>",
  						:m_400 => "400x400>",
                        :m_600 => "600x600>",
                        :l_700 => "700x700>",
  						:l_800s => "800x800>",
                        :l_900 => "900x900>"}, default_url: "http://placehold.it/100"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/, presence: true;
  accepts_nested_attributes_for :apartment_photos, :reject_if => :all_blank, :allow_destroy => true

  validates :title, presence: true;
	validates :neighborhood, presence: true;
	validates :price, presence: true;
end