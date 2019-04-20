class Author < ApplicationRecord:
    has_many :books, :through => :ownership
    has_many :ownerships
end


