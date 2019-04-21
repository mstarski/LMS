class Book < ApplicationRecord
    has_many :ownerships
    has_many :authors, :through => :ownerships

    has_many :placements
    has_many :bookstores, :through => :placement

    accepts_nested_attributes_for :authors, reject_if: lambda { |attr| 
        attr[:name].blank? || attr[:surname].blank?
    }
end
