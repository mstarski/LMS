class Author < ApplicationRecord:
    has_many :books, :through => :ownership
end


