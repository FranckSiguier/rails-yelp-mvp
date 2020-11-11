class Review < ApplicationRecord
  belongs_to :restaurant

  validates_presence_of :rating, :content
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: 0..5
end
