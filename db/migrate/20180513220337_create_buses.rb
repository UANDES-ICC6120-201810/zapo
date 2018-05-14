class CreateBuses < ActiveRecord::Migration[5.2]
  def change
    create_table :buses do |t|
      t.string :BusPlateNumber

      t.timestamps
    end
  end
end
