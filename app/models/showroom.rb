class Showroom < ApplicationRecord
  belongs_to :exhibition
  has_many :showroom_pieces
end
