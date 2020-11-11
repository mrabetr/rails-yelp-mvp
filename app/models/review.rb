class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, presence: true
  validates :content, presence: true
  # validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  validates :rating, numericality: { only_integer: true }
  validates_inclusion_of :rating, :in => 0..5
end
