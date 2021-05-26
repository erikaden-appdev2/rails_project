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
class Highlight < ApplicationRecord
  validates(:trip_id, { :presence => true })
  validates(:description, { :presence => true })

  belongs_to :trip
end
