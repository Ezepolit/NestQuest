class ApartmentShowing < ActiveRecord::Base
  belongs_to :apartment
  belongs_to :showing
end
