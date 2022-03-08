class Store < ActiveRecord::Base
  validate :apparel_validator
  validates_length_of :name, minimum: 3, too_short: 'Pick a longer name'
  validates_numericality_of :annual_revenue, greater_than: 0
  has_many :employees

  def apparel_validator
    if mens_apparel.nil? && womens_apparel.nil?
      errors.add(:mens_apparel, 'Store needs to have either mens or womens apparel.')
      errors.add(:womens_apparel, 'Store needs to have either mens or womens apparel.')
    end
  end
end
