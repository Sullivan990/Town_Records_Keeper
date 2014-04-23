class DeathRecord < ActiveRecord::Base
  validates :month, presence: true
  validates :day, presence: true
  validates :year, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
end
