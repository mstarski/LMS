class BookstoresController < ApplicationController
    def index
        @bookstores = Bookstore.all
    end
    def new 
        @collections = Collection.all
    end
    def create
        @new_bookstore = Bookstore.new(bookstore_params)
        @new_bookstore.save

        redirect_to bookstores_path
    end
    
    def show
       @bookstore = Bookstore.find(params[:id])
    end

    def edit
        @bookstore = Bookstore.find(params[:id])
        @collections = Collection.all
    end

    private
        def bookstore_params
            params.require(:bookstore).permit(:name, :collection_id)
        end
end
