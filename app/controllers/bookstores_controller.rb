class BookstoresController < ApplicationController
    def index

    end
    def new 
        @collections = Collection.all
    end
end
