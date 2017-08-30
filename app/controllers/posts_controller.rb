class PostsController < ApplicationController
    def index
        @posts= Post.all
    end
    def destroy
        @post.delete
        respond_to do |format|
          format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
          format.json { head :no_content }
        end
      end
    # def create
    #     @city = City.find(params[:city_id])
    #     @post = @city.posts.create(post_params)
    # end

    # private
    # def post_params
    #     params.require(:post).permit(:title, :review)
    # end

end
