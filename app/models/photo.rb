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
class Photo < ApplicationRecord
  validates(:url, { :presence => true })
  validates(:trip_id, { :presence => true })
  
  belongs_to :trip
end
