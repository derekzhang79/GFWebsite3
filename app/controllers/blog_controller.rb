class BlogController < ApplicationController

before_filter :check_auth, :except => [:index, :login, :auth]

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
    if params[:password] == "17532Edin"
        session[:logged_in] = true
        redirect_to :action => :list
    else
        flash[:notice] = "Wrong password.  IP and activity is logged, just FYI"
        redirect_to :action => :login
    end
end

#GET /blog/admin/list
def list
end

#GET /blog/admin/edit/post_id
def edit
    @post = Post.find(params[:id])
end

#GET /blog/admin/new/
def new
end

#POST /blog/admin/create/
def create
    post = Post.new(params[:post])

    if post.save
        flash[:notice] = "Created post sucessfully"
    else
        flash[:notice] = "Could not create post"
    end

    redirect_to :action => :list
end

#POST /blog/admin/destroy/post_id
def destroy
    Post.destroy(params[:id])

    flash[:notice] = "Deleted post sucessfully"
    redirect_to :action => :list
end

#POST /blog/admin/update
def update
    @post = Post.find(params[:id])

    if @post.update_attributes(params[:post])
        flash[:notice] = "Updated sucessfully"
    else
        flash[:notice] = "Couldn't update post"
    end

    redirect_to :action => :list
end

#Make sure user is authenticated
def check_auth
    if !session[:logged_in]
        flash[:notice] = "Please log in again.  Session expired"
        redirect_to :action => :login
    end
end

end
