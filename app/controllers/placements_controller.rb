class PlacementsController < ApplicationController
    def new
        @placement = Placement.new
        @books = Book.all
        @collections = Collection.all
    end
    def create
        @new_placement = Placement.new(placement_params)
        if @new_placement.save then
            render file: '/app/views/placements/creation_successful.html.erb'
        else
            render file: '/app/views/placements/creation_failed.html.erb'
        end
    end
    private
        def placement_params
            params.require(:placement).permit(:book_id, :collection_id)
        end
end

