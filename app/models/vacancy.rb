class Vacancy < ApplicationRecord
  belongs_to :company

  has_many :applicants

  validates :title, 
            :location, 
            :requirements, 
            :salary, 
            presence: true
  validates :description, length: {minimum:3, maximum:1000}, presence: true
end
