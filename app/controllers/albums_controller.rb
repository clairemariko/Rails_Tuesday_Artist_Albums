class AlbumController < ApplicationController

  def index

    if(params[:artist_id])
      artist = Artist.find(params[:artist_id])
      albums = artist.albums
    else
      albums = Album.all
    end

    render json: albums.as_json({include: :track})
  end

end