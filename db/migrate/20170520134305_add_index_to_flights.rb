class AddIndexToFlights < ActiveRecord::Migration[5.0]
  def change
  	add_index :flights, :departing_airport_id
  	add_index :flights, :arriving_airport_id
  end
end
