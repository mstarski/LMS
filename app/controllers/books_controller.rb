class BooksController < ApplicationController
    
    before_action :authenticate_user!

    def index
        @books = Book.all
    end
    def new
        @book = Book.new
        @book.authors.build
    end
    def create
        @new_book = Book.new(book_params)
        @new_book.save
        redirect_to books_path
    end
    def show
        @book = Book.find(params[:id])
    end
    def edit
        @book = Book.find(params[:id]) 
    end
    def update
        @book = Book.find(params[:id])
        if @book.update_attributes(book_params)
            render file: '/app/views/books/edit_success.html.erb'
        else
            render file: '/app/views/books/edit_fail.html.erb'
        end
    end
    def destroy
        @book = Book.find(params[:id])
        if @book.destroy
            render file: '/app/views/books/delete_success.html.erb'
        else
            render file: '/app/views/books/delete_fail.html.erb'
        end
    end

    private
        def book_params
            params.require(:book).permit(:title, :publish_date, :authors_attributes => [:id, :name, :surname])
        end
end
