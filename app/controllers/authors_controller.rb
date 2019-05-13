class AuthorsController < ApplicationController
    
    before_action :authenticate_user!
    
    def index
        @authors = Author.all
    end

    def show
        @author = Author.find(params[:id])
    end

    def edit
        @author = Author.find(params[:id])
    end

    def update
        @author = Author.find(params[:id])
        if @author.update_attributes(author_params)
            render file: '/app/views/authors/edit_success.html.erb'
        else
            render file: '/app/views/authors/edit_success.html.erb'
        end
    end

    def destroy
        @author = Author.find(params[:id])
        if @author.destroy
            render file: '/app/views/authors/delete_success'
        else
            render file: '/app/views/authors/delete_failed'
        end
    end

    private
        def author_params
            params.require(:author).permit(:name, :surname)
        end
end
