class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, :rating, presence: true

  validates :content, length: { minimum: 5 }

  validates :rating,
            numericality: true,
            inclusion: {
              in: 0..5
            }
end
