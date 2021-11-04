class Api::V1::PostsController < ApplicationController
     before_action :authenticate_user!
    def index
        @posts = Post.all
        render json: {
            data: @posts,
            status: 200,
            message: "All post"
          }, status: :ok
    end
    
  
end
