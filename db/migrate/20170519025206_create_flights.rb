class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.integer :departing_airport_id
      t.integer :arriving_airport_id
      t.date :departure_date
      t.integer :duration

      t.timestamps
    end
  end
end
