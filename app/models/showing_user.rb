class ShowingUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :showing
  validates :user, presence: true;
  validates :showing, presence: true;
end
