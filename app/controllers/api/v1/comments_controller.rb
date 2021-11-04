class Api::V1::CommentsController < ApplicationController
     before_action :authenticate_user!
     #Display comments from post_id
    def index
        @post = Post.find(params[:id]).comments
       
        render json: {
            data: @post,
            status: 200,
            message: "Comments from post"
          }, status: :ok
    end

     #Add comment for post
     def create
        @post = Post.find(params[:id]).comments
       
        render json: {
            data: @post,
            status: 200,
            message: "Comments from post"
          }, status: :ok
    end


    def create
        @comment = Comment.new(comment_params)
        @comment.post_id = params[:id]
        @comment.user = current_user
    
        if @comment.save
            render json: {
                status: :created,
                message: "Comments created"
              }, status: :created
        else
            render json: {
                status: :not_acceptable,
                message: "Comments not created"
              }, status: :not_acceptable
        end
      end
    
      private
    
      def comment_params
        params.require(:comment).permit(:content)
      end
    
end