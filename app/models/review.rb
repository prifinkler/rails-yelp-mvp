class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, :rating, presence: true
  validates :rating,
            inclusion: { in: 0..5, message: 'Should be between 0 to 5' },
            numericality: { only_integer: true }
end
