class ShowingUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :showing
end
