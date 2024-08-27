class AddNameToFlights < ActiveRecord::Migration[6.1]
  def change
    add_column :flights, :name, :string
    add_column :flights, :airline_company, :string
  end
end
