# == Schema Information
#
# Table name: trips
#
#  id         :bigint           not null, primary key
#  end_date   :date
#  location   :text
#  name       :text
#  start_date :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  creator_id :integer
#
require "test_helper"

class TripTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
