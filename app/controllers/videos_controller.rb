class VideosController < ApplicationController

  def index
    @video = Video.new
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
      flash.now[:alert] = '保存できません'
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
