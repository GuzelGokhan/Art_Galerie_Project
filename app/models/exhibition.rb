class Exhibition < ApplicationRecord
  belongs_to :galerie
  has_many :showrooms
end
