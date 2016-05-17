class Venue < ActiveRecord::Base
  #we had to add this on so venue can have access to the artist
  has_many :gigs
  has_many(:artists, {through: :gigs})
end
