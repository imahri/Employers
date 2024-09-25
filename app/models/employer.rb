class Employer < ApplicationRecord
    validates :name, presence: true
    validates :position, presence: true
    validates :salary, presence: true
  end
  