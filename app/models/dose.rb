class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient


  validates :description, presence: true, uniqueness: true
  validates :cocktail, :ingredient, presence: true

  validates :ingredient, uniqueness: {scope: :cocktail}
end
