class LikesController < ApplicationController

    def index
        like = Like.all
        render json: like
    end
end
