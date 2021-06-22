class ResourcesController < ApplicationController
    #before action :set_resource, only: [:show, :update, :destroy]

    def index
        @resources = Resource.all 
        render json: @resources
    end

    def show
        render json: @resource
    end

    def create
        @resource = Resource.create(resource_params)

        if @resource.save
            render json: @resource, status: :created, location: @resource 
        else
            render json: @resource.errors, status: :unproccessable_entity
        end
    end

    def destroy
        @resource.destroy
    end

    def set_resource
        @resource = Resource.find(params[:id])
    end

    def resource_params
        params.require(:resource).permit(:name, :description, :link, :location)
    end

end
