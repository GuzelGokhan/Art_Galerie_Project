class Galerie < ApplicationRecord
  belongs_to :user
  has_many :exhibitions
end
