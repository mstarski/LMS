class CollectionsController < ApplicationController
    def index
        @collections = Collection.all
    end

    def create
        @new_collection = Collection.new(collection_params)
        @new_collection.save

        redirect_to collections_path 
    end
    
    private
        def collection_params
            params.require(:collection).permit(:name, :size)
        end
end
