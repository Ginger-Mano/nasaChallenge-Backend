class LikesController < ApplicationController

    def index
        like = Like.all
        render json: like
    end

    def show
        like = Like.find(params[:id])
        render json: like
    end

    def create
        like = Like.create(like_params)
        render json: like
    end

    def destroy
        like = Like.find(params[:id])
        like.destroy
        render json: like
    end

    private

    def like_params
        params.require(:like).permit(:id, :like_count)
    end
end
