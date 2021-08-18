class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true }, format: {
    with: /\A[0-5]\z/,
    message: 'Must be between 0 and 5' }
end
