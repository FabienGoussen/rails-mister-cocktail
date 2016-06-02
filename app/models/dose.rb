class Dose < ActiveRecord::Base
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true, uniqueness: true
  validates :cocktail, presence: true, uniqueness: true
  validates :ingredient, presence: true, uniqueness: true
  validates_uniqueness_of :cocktail_id, :scope => [:ingredient_id]
end