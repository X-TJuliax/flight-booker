class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.datetime :start_time
      t.datetime :duration

      
      t.timestamps
    end
      add_column :flights, :departure_flight_id, :bigint
      add_foreign_key :flights, :airports, column: :departure_flight_id

      add_column :flights, :arrival_flight_id, :bigint
      add_foreign_key :flights, :airports, column: :arrival_flight_id
  end
end
