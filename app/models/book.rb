class Book < ApplicationRecord
    has_many :authors, :through => :ownership
    has_many :ownerships

    has_many :bookstores, :through => :placement
    has_many :placements
end
