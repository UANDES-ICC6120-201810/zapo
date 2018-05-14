class CreateBusEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :bus_events do |t|
      t.references :bus, foreign_key: true
      t.references :busStop, foreign_key: true
      t.datetime :EventTime
      t.decimal :BusSpeed

      t.timestamps
    end
  end
end
