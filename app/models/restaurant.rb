class Restaurant < ApplicationRecord
  CATEGORIES = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  has_many :reviews, dependent: :destroy

  validates_presence_of :name, :address, :category
  validates :category, inclusion: { in: CATEGORIES }

end
