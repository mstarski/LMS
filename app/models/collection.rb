class Collection < ApplicationRecord
    has_many :bookstores

    has_many :placements
    has_many :books, :through => :placement 
end
