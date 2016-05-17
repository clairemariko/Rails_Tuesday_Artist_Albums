
#this is coming in api design when we invlude venue, think about how you want all this information laid out, what is the most logical way to present all the information 

#to get gigs it is expecting an artist id so to get round it we use an if statment so if there is no artist id then bring back all the gigs. 

class GigsController < ApplicationController
  def index

    if(params[:artist_id])
      artist = Artist.find(params[:artist_id])
      gigs = artist.gigs
    else
      gigs = Gig.all
    end

    render json: gigs.as_json({include: :venue})
  end
end