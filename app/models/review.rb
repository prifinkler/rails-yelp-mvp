class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, :rating, presence: true
  validates :rating, :inclusion => { :in => 0..5, :message => " should be between 0 to 5" }
end
