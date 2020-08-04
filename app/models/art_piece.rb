class ArtPiece < ApplicationRecord
  belongs_to :artist
  belongs_to :user
  has_many :showroom_pieces
end
