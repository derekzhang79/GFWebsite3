class BlogController < ApplicationController

#GET /blog
def index
    respond_to do |format|
        format.html do
            render :layout => 'application'
        end

        format.xml
    end
end

#GET /blog/admin
def login
end

#POST /blog/auth
def auth
end

end
