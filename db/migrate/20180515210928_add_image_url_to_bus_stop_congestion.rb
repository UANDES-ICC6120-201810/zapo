class AddImageUrlToBusStopCongestion < ActiveRecord::Migration[5.2]
  def change
    add_column :bus_stop_congestions, :ImageUrl, :string
  end
end
