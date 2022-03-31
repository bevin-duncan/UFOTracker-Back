require_relative './application_controller.rb'

class SightingController < ApplicationController 
   
    get "/sightings" do
        sightings = Sighting.first(1000)
        sightings.to_json
      end
  
  
      post '/sightings' do
        sightings = Sighting.create(params)
        sightings.to_json
      end
      
      
      patch '/sightings/:id' do
        change_sighting = Sighting.find(params[:id])
        change_sighting.update(params)
        change_sighting.to_json
      end
  
      
     delete '/sighting/:id' do 
        deleted_sighting = Sighting.find(params[:id])
        deleted_sighting.destroy
        deleted_sighting.to_json
    end

end