class Api::V1::PostsController < ApplicationController
     before_action :authenticate_user!
    def index
        @posts = Post.all
       
        render json: {
            
            status: 200,
            message: "All post"
          }, status: :ok
    end

    def comments
        @comments = Post.last.comments        
       
        render json: {
            data: @comments,
            status: 200,
            message: "Comments for the post"
          }, status: :ok
    end
end