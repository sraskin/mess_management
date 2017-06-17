# == Schema Information
#
# Table name: members
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  name       :string
#  phone      :string
#  address    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Member < ActiveRecord::Base
  belongs_to :user
  has_many :deposits
  has_many :meals
  has_many :bazars

  def self.test
    member_breakfasts = []
    member_lunches = []
    member_dinners = []
    member_guests = []
    member_meals = Meal.where("user_id = ? AND member_id = ?", 1, 5)
    member_meals.each do |member_meal|
      member_breakfast = member_meal.breakfast
      member_breakfasts << member_breakfast
      member_lunch = member_meal.lunch
      member_lunches << member_lunch
      member_dinner = member_meal.dinner
      member_dinners << member_dinner
      member_guest = member_meal.guest
      member_guests << member_guest
    end
    total_member_breakfast = member_breakfasts.inject(:+)
    total_member_lunch = member_lunches.inject(:+)
    total_member_dinner = member_dinners.inject(:+)
    total_member_guest = member_guests.inject(:+)
    total_member_meal = total_member_breakfast + total_member_lunch + total_member_dinner + total_member_guest
  end
end

