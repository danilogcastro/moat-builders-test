class AlbumsController < ApplicationController
  def index
    @artist = Artist.find(params[:artist_id])
    @albums = Album.where(artist: @artist)
  end

  def new
    @album = Album.new
    authorize @album
  end

  def create
    @album = Album.new(album_params)
    authorize @album
    if @album.save
      flash[:notice] = "Album was successfully created"
      redirect_to artist_path(@album.artist)
    else
      render :new
    end
  end

  def edit
    @album = Album.find(params[:id])
    authorize @album
  end

  def update
    @album = Album.find(params[:id])
    authorize @album
    if @album.update(album_params)
      flash[:notice] = "Album was successfully updated"
      redirect_to artist_path(@album.artist)
    else
      render :edit
    end
  end

  def destroy
    @album = Album.find(params[:id])
    authorize @album
    @album.destroy

    flash[:notice] = "Album was successfully destroyed"
    redirect_to artist_path(@album.artist)
  end

  private

  def album_params
    params.require(:album).permit(:name, :year, :artist_id)
  end
end
