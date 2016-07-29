class SongsController < ApplicationController
  def index
    @songs = Song.where(user_id: current_user.id)
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.save
    redirect_to home_path, notice: "Song was successfully created."
    else
      render :new
    end
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    if @song.update(song_params)
      redirect_to home_path, notice: "Your changes have been saved."
    else
      render :edit
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to :home, notice: "Song was successfully deleted."
  end

  private
  def song_params
    params.require(:song).permit(:title, :lyrics, :user_id)
  end
end
