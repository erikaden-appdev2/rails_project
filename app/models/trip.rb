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
class Trip < ApplicationRecord
  validates(:name, { :presence => true })
  has_many :own_photos, foreign_key: :trip_id, class_name: "Photo", dependent: :destroy
  has_many :own_highlights, foreign_key: :trip_id, class_name: "Highlight", dependent: :destroy
  has_many :own_participants, foreign_key: :trip_id, class_name: "Participant", dependent: :destroy
  belongs_to :user
end
