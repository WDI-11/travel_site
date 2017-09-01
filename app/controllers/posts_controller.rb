class PostsController < ApplicationController
    def index
        ####################################
        # limits post to a specific city   #
        ####################################
        @city = City.find(params[:city_id])

        ######################################################
        # sorting posts in descending order and pagination   #
        ######################################################
        @posts = @city.posts.order('created_at DESC').paginate(:page => params[:page], :per_page => 10)
    end

    def show
        @city = City.find(params[:city_id])
        @post= Post.find(params[:id])
    end

    def destroy
        @city = City.find(params[:city_id])
        @post = Post.find(params[:id])
        @post.delete
        redirect_to city_posts_path(@city)
      end
      
    def create
        @city = City.find(params[:city_id])
        @post = @city.posts.new(post_params)
        
        if @post.save
        ######################################################
        # if a post saves sucessfully, redirect to new post  #
        ######################################################
            redirect_to city_post_path(@city, @post)
        else
        ###################################################################
        # if validation fails, send error message and re-render the page  #
        ###################################################################
            flash.now[:alert] = @post.errors.full_messages.join(", ")
            render :new
        end
    end

    def new
        
        @city = City.find(params[:city_id])
        @post = @city.posts.new
    end

    def edit
        @city = City.find(params[:city_id])
        @post = Post.find(params[:id])
    end

    def update
        @city = City.find(params[:city_id])
        @post = Post.find(params[:id])
        @post.update(post_params)
    
        redirect_to city_post_path(@city, @post)
    end
    

     private
     def post_params
         params.require(:post).permit(:title, :review)
     end

end
