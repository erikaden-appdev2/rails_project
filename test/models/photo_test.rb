# == Schema Information
#
# Table name: photos
#
#  id         :bigint           not null, primary key
#  url        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  trip_id    :integer
#
require "test_helper"

class PhotoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
