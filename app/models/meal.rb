# == Schema Information
#
# Table name: meals
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  member_id  :integer
#  breakfast  :float            default(0.0)
#  lunch      :float            default(0.0)
#  dinner     :float            default(0.0)
#  guest      :float            default(0.0)
#  total      :float            default(0.0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Meal < ActiveRecord::Base
  belongs_to :member
  belongs_to :user
end
