class VideosController < ApplicationController
  
  def index
    @video = Video.new
  end

  def new
  end

  def create 
    @video = Video.new(video_params)
    if @video.save
      # binding.pry
      respond_to do |format|
        format.json
      end
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
    params.require(:video).permit(:text).merge(user_id: current_user.id)
  end
end
