class Artist < ActiveRecord::Base
#created functionality so that in the console we can do artist.album
  has_many :albums  
end
