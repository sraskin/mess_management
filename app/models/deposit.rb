# == Schema Information
#
# Table name: deposits
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  member_id  :integer
#  name       :string
#  amount     :integer          default(0)
#  date       :datetime
#  comments   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Deposit < ActiveRecord::Base
  belongs_to :member
  belongs_to :user
end
