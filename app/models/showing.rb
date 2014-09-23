class Showing < ActiveRecord::Base
	has_many :apartment_showings, dependent: :destroy
	has_many :apartments, through: :apartment_showings
	belongs_to :broker
	has_many :users, through: :showing_users

	has_attached_file :image, :styles => { :medium => "500x500>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
 	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/


 	def self.search(term)
	 	if term
	 		unless term == ""
		 		results =[]
		 		apartment_showings = []
		  		if term.to_i > 0
		  			term = term.to_i
		  		end

		  		apartments = Apartment.where('price=? OR bedrooms LIKE ? OR neighborhood LIKE ?', term, term, term) 

		  		apartments.each do |apartment|
		  			apartment_showings << ApartmentShowing.where(apartment_id: apartment.id)
		  		end
		  		apartment_showings.flatten!

		  		apartment_showings.each do |apartment_showing|
		  			results << Showing.where(id: apartment_showing.showing_id)
		  		end
		  		if results.empty?
		  			self.all
		  		else
		  			return results.flatten!
		  		end
		  	end
	  	end
	  	self.all
	end




end