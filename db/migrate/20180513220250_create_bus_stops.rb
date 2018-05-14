class CreateBusStops < ActiveRecord::Migration[5.2]
  def change
    create_table :bus_stops do |t|
      t.string :Code
      t.string :Location
      t.string :Name

      t.timestamps
    end
  end
end
