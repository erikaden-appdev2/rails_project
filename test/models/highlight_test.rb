# == Schema Information
#
# Table name: highlights
#
#  id          :bigint           not null, primary key
#  description :text
#  location    :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  trip_id     :integer
#
require "test_helper"

class HighlightTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
