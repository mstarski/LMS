class Collection < ApplicationRecord
    has_many :bookstores, dependent: :nullify

    has_many :placements
    has_many :books, :through => :placements 
end
