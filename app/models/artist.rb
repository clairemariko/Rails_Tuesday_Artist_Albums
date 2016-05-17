class Artist < ActiveRecord::Base
#created functionality so that in the console we can do artist.album
  has_many :albums  
  has_many :gigs
  has_many( :venues, {through: :gigs} )
  #gigs being the join table so it has access to the venue
end
