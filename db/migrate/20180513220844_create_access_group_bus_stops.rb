class CreateAccessGroupBusStops < ActiveRecord::Migration[5.2]
  def change
    create_table :access_group_bus_stops do |t|
      t.references :accessGroup, foreign_key: true
      t.references :busStop, foreign_key: true

      t.timestamps
    end
  end
end
