class Broker < ActiveRecord::Base
	
	has_many :showings
	has_many :apartments
	has_many :reviews

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_attached_file :avatar, :styles => { :medium => "1000x10000>", :thumb => "100x100>" }, :default_url => "/assets/avatar_2x.png"
 	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
