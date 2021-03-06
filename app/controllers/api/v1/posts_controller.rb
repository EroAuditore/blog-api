module Api
  module V1
    class PostsController < ApplicationController
      before_action :authenticate_user!
      def index
        @posts = Post.all

        render json: {
          data: @posts,
          status: 200,
          message: 'All post'
        }, status: :ok
      end

      def create
        @post = current_user.posts.new(post_params)

        if @post.save
          render json: {
            status: :created,
            message: 'Post was successfully created.'
          }, status: :created

        else
          render json: {
            status: :created,
            message: 'Post was not created.'
          }, status: :created
        end
      end

      private

      def post_params
        params.require(:post).permit(:content)
      end
    end
  end
end
