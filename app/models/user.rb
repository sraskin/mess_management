class User < ActiveRecord::Base
  has_many :members
  has_many :services
  has_many :meals
  has_many :deposits
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
