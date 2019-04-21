class BooksController < ApplicationController
    def index
        @books = Book.all
    end
    def new
        @book = Book.new
        2.times { @book.authors.build }
    end
    def create
        @new_book = Book.new(book_params)
        @new_book.save
        redirect_to books_path
    end
    private
        def book_params
            params.require(:book).permit(:title, :publish_date, :authors_attributes => [:id, :name, :surname])
        end
end
