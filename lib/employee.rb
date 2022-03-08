class Employee < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :store
  validates_numericality_of :hourly_rate, in: 40..200
  belongs_to :store
end
