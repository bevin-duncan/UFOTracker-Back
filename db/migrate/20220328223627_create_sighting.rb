class CreateSighting < ActiveRecord::Migration[6.1]
  def change
    create_table :sightings do |t|
      t.string :summary
      t.string :city
      t.string :state 
      t.datetime :date_time
      t.string :shape 
      t.float :city_latitude
      t.float :city_longitude
      t.timestamps
    end
  end
end
