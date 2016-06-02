class Cocktail < ActiveRecord::Base
  has_many :doses, dependent: :destroy
  has_many :ingredients
  validates :name, presence: true, uniqueness: true
end
