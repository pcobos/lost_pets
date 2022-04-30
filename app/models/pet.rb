class Pet < ApplicationRecord
  SPECIES = %w(dog cat bird snake)
  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }
end
