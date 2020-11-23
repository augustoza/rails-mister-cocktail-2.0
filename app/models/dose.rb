class Dose < ApplicationRecord
  validates :description, presence: true, allow_blank: false
  validates :cocktail, uniqueness: { scope: :ingredient }
  validates :cocktail_id, :ingredient_id, presence: true
  belongs_to :cocktail
  belongs_to :ingredient
end
