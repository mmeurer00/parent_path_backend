class FavoritesController < ApplicationController
    before_action :set_post_or_resource, only: [:create, :destroy]
    before_action :set_favorite, only: [:show, :destroy]

    def index
        @user = User.find_by_id(params[:user_id])
        @favorites = @user.favorites
        render json: @favorites
    end

    # def show
    #     render json: @favorite
    # end

    def create
        @favorite = @post_or_resource.favorites.build(favorite_params)
        
        if @favorite.save
            render json: @favorite, status: :created, location: @favorite 
        else
            render json: @favorite.errors, status: :unproccessable_entity
        end
    end

    def destroy
        @favorite.destroy
    end

    private

    def set_post_or_resource
        @post_or_resource = Post.find_by_id(params[:post_id]) || Resource.find_by_id(params[:resource_id])
    end

    def set_favorite
        @favorite = Favorite.find_by_id(params[:id]) 
    end

    def favorite_params
        params.require(:favorite).permit(:post_id, :resource_id, :user_id)
    end

 end
