#making a controller as now we have the resource of restful routes and we know need to tell it what to do with these routes. 


#we are just making a json api and hence we are rendering it. 
class ArtistsController < ApplicationController
  def index
    artists = Artist.all
    render json: artists
  end


#rather than animals where it was bypassing html this is purely going into json. find_by is an out of the box rails thing. 
#what if we not only want to show artist but their albums too so instead of json: artist... artist.as_json({include: :albums})
#you ca also use methods: as within in Artist we have the method albums due to it relation in artist. 
  def show
    artist = Artist.find_by(id: params[:id])
    render(json: artist.as_json( { 
      :include => [
      { :albums => {:include => :tracks} },
      { :gigs => {:include => :venue} }
      ]
     } ) )
  end
end

#we want to nest tracks within albums so 




  #to include multiple
  # render(json: artist.as_json({include: [:albums, :gigs]}) )

#wwhat if you just want to see the gigs of a particular artist. Rails can create this route through nested resources. 



