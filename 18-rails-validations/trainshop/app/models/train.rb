class Train < ApplicationRecord
  belongs_to :conductor
  has_many :journeys
  has_many :passengers, through: :journeys
   validates :name, uniqueness: { case_sensitive: false }
   validates :name, presence: true
   validates :price, numericality: true

  def choo_choo
    "chooo choooo chooo, I am #{self.name}"
  end
end
