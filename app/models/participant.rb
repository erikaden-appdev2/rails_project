# == Schema Information
#
# Table name: participants
#
#  id         :bigint           not null, primary key
#  name       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  trip_id    :integer
#
class Participant < ApplicationRecord
  validates(:name, { :presence => true })
  validates(:trip_id, { :presence => true })
  
  belongs_to :trip
end
