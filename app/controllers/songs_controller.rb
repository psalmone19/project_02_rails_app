class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.save
    redirect_to :index, notice: "Song was successfully created."
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
    if @song.update(book_params)
      redirect_to (@song)
    else
      render :edit
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.delete
    redirect_to :home, notice: "Song was successfully deleted."
  end

  private

  def song_params
    params.require(:song).permit(:title, :lyrics)
  end
end
