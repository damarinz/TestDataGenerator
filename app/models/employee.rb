class Employee < ApplicationRecord
  has_many :timesheets
  belongs_to :department
end
