class CollectionsController < ApplicationController

    before_action :authenticate_user!

    def index
        @collections = Collection.all
    end

    def create
        @new_collection = Collection.new(collection_params)
        @new_collection.save
        redirect_to collections_path 
    end

    def show
        @collection = Collection.find(params[:id])
    end

    def edit
        @collection = Collection.find(params[:id])
    end

    def update
        @collection = Collection.find(params[:id])
        if @collection.update_attributes(collection_params)
            render file: '/app/views/collections/edit_success.html.erb'
        else
            render file: '/app/views/collections/edit_failed.html.erb'
        end
    end

    def destroy
        @collection = Collection.find(params[:id])
        if @collection.destroy
            render file: '/app/views/collections/delete_success.html.erb'
        else
            render file: '/app/views/collections/delete_fail.html.erb'
        end
    end

    def associated_bookstores
        @collection = Collection.find(params[:col_id])
        @bookstores = @collection.bookstores
    end

    def get_books
        @collection = Collection.find(params[:col_id])
        @books = @collection.books
    end
    
    private
        def collection_params
            params.require(:collection).permit(:name, :size)
        end
end
