class Member < ActiveRecord::Base
  belongs_to :user
  has_many :deposits
  has_many :meals
end
