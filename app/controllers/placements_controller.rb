class PlacementsController < ApplicationController
    def new
        @placement = Placement.new
        @books = Book.all
        @collections = Collection.all
    end
    def create
        @new_placement = Placement.new(placement_params)
        @collection = Collection.find(placement_params[:collection_id])
        book_already_in = @collection.books.exists?(:id => placement_params[:book_id])
        if @collection.books.length + 1 <= @collection.size && !book_already_in && @new_placement.save then
            render file: '/app/views/placements/creation_successful.html.erb', :status => 200
        else
            render file: '/app/views/placements/creation_failed.html.erb', :status => 500
       end
    end
    private
        def placement_params
            params.require(:placement).permit(:book_id, :collection_id)
        end
end

