class SongsController < ApplicationController
  def index
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)
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

  def song_params
    params.require(:song).permit(:title, :lyrics)
  end
end
