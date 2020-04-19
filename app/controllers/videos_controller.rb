class VideosController < ApplicationController

  def index
    @video = Video.new
    # if user_signed_in?
    #   gon.videos = @video.text
    # end
  end

  def new
  end

  def create 
    @video = Video.new(video_params)
    if @video.save
      respond_to do |format|
        format.json
      end
    else
      flash.now[:alert] = '同じ動画の保存はできません'
      redirect_to :index
    end
  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy
  end

  private

  def video_params
    params.require(:video).permit(:text,:title).merge(user_id: current_user.id)
  end

end
