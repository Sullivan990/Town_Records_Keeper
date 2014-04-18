class BirthRecord < ActiveRecord::Base
  validates :birth_month, presence: true
  validates :birth_day, presence: true
  validates :birth_year, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
end
