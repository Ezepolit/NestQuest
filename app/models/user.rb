class User < ActiveRecord::Base

	has_many :reviews
	has_many :showings, through: :showing_users
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  letsrate_rater


end
