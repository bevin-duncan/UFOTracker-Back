class User < ActiveRecord::Base
    has_many :submissions
    has_many :sightings, through: :submissions

end