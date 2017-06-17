class HomeController < ApplicationController
  def index
    @meals = current_user.meals.all
    @members = current_user.members.all
    total_meal_calculation
    total_deposit_calculation
  end

  def total_meal_calculation
    breakfasts = []
    lunches = []
    dinners = []
    guests = []
    meals = current_user.meals.all
    meals.each do |meal|
      breakfast = meal.breakfast
      breakfasts << breakfast
      lunch = meal.lunch
      lunches << lunch
      dinner = meal.dinner
      dinners << dinner
      guest = meal.guest
      guests << guest
    end
    @total_breakfast = breakfasts.inject(:+)
    @total_lunch = lunches.inject(:+)
    @total_dinner = dinners.inject(:+)
    @total_guest = guests.inject(:+)
    @total_meal = @total_breakfast + @total_lunch + @total_dinner + @total_guest
  end

  def total_deposit_calculation
    amounts = []
    deposits = current_user.deposits.all
    deposits.each do |deposit|
      amount = deposit.amount
      amounts << amount
    end
    @total_deposit = amounts.inject(:+)
  end

  # def meal_count(id)
  #   member_breakfasts = []
  #   member_lunches = []
  #   member_dinners = []
  #   member_guests = []
  #   member_meals = Meal.where("user_id = ? AND member_id = ?", current_user, id)
  #   member_meals.each do |member_meal|
  #     member_breakfast = member_meal.breakfast
  #     member_breakfasts << member_breakfast
  #     member_lunch = member_meal.lunch
  #     member_lunches << member_lunch
  #     member_dinner = member_meal.dinner
  #     member_dinners << member_dinner
  #     member_guest = member_meal.guest
  #     member_guests << member_guest
  #   end
  #   @total_member_breakfast = member_breakfasts.inject(:+)
  #   @total_member_lunch = member_lunches.inject(:+)
  #   @total_member_dinner = member_dinners.inject(:+)
  #   @total_member_guest = member_guests.inject(:+)
  #   @total_member_meal = @total_member_breakfast + @total_member_lunch + @total_member_dinner + @total_member_guest
  # end

end
