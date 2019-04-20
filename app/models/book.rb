class Book < ApplicationRecord
    has_many :authors, :through => :ownership
    has_many :bookstores, :through => :placement
end
