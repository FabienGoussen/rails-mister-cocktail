class Ingredient < ActiveRecord::Base
  has_many :doses
  belongs_to :cocktail
  validates :name, presence: true, uniqueness: true
end
