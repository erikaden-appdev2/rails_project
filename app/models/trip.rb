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
  
  has_many :photo, dependent: :destroy
  has_many :highlight, dependent: :destroy 
  has_many :participant, dependent: :destroy
  belongs_to :user
end
