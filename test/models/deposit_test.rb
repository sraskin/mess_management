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

require 'test_helper'

class DepositTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
