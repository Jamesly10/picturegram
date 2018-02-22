class CommentsController < ApplicationController
  before_action :set_picture

  def create
    @picture.comments.create!(comments_params)
    redirect_to @picture
  end

  private
    def set_picture
      @picture = Picture.find(params[:picture_id])
    end

    def comments_params
      params.require(:comment).permit(:body)
    end
end
