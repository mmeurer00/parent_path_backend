class PostsController < ApplicationController
     before_action :set_post, only: [:show, :update, :destroy]

    def index
        @posts = Post.all 
        render json: @posts
    end

    def show
        render json: @post
    end

    def create
        @post = Post.new(post_params)

        if @post.save
            render json: @post, status: :created, location: @post 
        else
            render json: @post.errors, status: :unproccessable_entity
        end
    end

    def destroy
        @post.destroy
    end

    def set_post
        @post = Post.find(params[:id])
    end

    def post_params
        params.require(:post).permit(:title, :content, :link, :tag, :user_id)
    end
end
