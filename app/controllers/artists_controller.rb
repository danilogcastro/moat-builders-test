class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
    authorize @artist
    @albums = Album.where(artist: @artist)
    @albums.each do |album|
      authorize album
    end
  end
end
