class CreateBusStopServices < ActiveRecord::Migration[5.2]
  def change
    create_table :bus_stop_services do |t|
      t.references :busStop, foreign_key: true
      t.references :service, foreign_key: true
      t.string :LastArrivalEstimation
      t.datetime :CapturedAt

      t.timestamps
    end
  end
end
