class Api::V1::CommentsController < ApplicationController
     before_action :authenticate_user!
    def index
        @post = Post.find(params[:id]).comments
       
        render json: {
            data: @post,
            # user: current_user.posts,
            status: 200,
            message: "All post"
          }, status: :ok
    end
    
end