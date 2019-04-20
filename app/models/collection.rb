class Collection < ApplicationRecord
    has_many :bookstores

    has_many :books, :through => :placement 
    has_many :placements
end
