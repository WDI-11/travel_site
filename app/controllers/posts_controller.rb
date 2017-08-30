class PostsController < ApplicationController
    def index
        @posts= Post.all
    end

    def show
        @post= Post.find(params[:id])
    end

    def destroy
        @post = Post.find(params[:id])
        @post.delete
        redirect_to city_posts_path
      end
    # def create
    #     @city = City.find(params[:city_id])
    #     @post = @city.posts.create(post_params)
    # end

     private
     def post_params
         params.require(:post).permit(:title, :review)
     end

end
