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
    total_amounts = []
    amounts = Service.all
    amounts.each do |amount|
      total = amount.amount
      total_amounts << total
    end
    total_service_charges = total_amounts.inject(0) {|sum, a| sum + a}
    @service_charge_perperson = total_service_charges / Member.count
  end
end

