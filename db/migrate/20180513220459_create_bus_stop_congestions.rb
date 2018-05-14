class CreateBusStopCongestions < ActiveRecord::Migration[5.2]
  def change
    create_table :bus_stop_congestions do |t|
      t.references :busStop, foreign_key: true
      t.datetime :EventTime
      t.decimal :AmountOfPeople

      t.timestamps
    end
  end
end
