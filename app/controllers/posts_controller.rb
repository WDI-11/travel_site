class PostsController < ApplicationController
    def index
        @city = City.find(params[:city_id])
        @posts = @city.posts.all.order('created_at DESC')
        # @posts = Post.all
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
<<<<<<< HEAD
    # @post = @city.posts.new(post_params)
        
    # if @post.errors.any?
    #     @posts.errors.each do |attributes, message|
    #     end
    #     @posts.errors.include>(:review)
    #     review_errors= @post.errors.on(:review)
    #  redirect_to city_posts_path(@city, @post)

    #     if review_errors.kind_of?(Array)
    #         review_errors.each do |review|
    #         end
    #     else
    #         review = review_errors
    #     end
    #   end
    @post = @city.posts.new(post_params)
    if @post.save
      redirect_to city_posts_path(@city, @post)
    else
      flash[:error] = @post.errors.full_messages.join(", ")
      redirect_to new_city_post_path
      end
=======
    @post = @city.posts.new(post_params)
    if @post.save
        redirect_to city_posts_path(@city, @post)
    else
        redirect_to new_city_post_path
    end
>>>>>>> dev
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
