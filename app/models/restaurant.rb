class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"].freeze
  validates :name, presence: true
  validates :category, presence: true
  validates :category, inclusion: {in: CATEGORY}
  validates :address, presence: true
end
