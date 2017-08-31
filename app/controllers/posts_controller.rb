class PostsController < ApplicationController
    def index
        @city = City.find(params[:city_id])
        @posts = @city.posts.all.order('created_at DESC')
        # @posts = Post.all
    end

    def show
        @post= Post.find(params[:id])
    end

    def destroy
        @post = Post.find(params[:id])
        @post.delete
        redirect_to city_posts_path
      end
    def create
    @city = City.find(params[:city_id])
    @post = @city.posts.create!(post_params)

    redirect_to city_posts_path(@city, @post)
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
