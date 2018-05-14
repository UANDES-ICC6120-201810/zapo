class CreateDevicesAccessPointsJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :devices, :access_points do |t|
      t.index :device_id
      t.index :access_point_id
    end
  end
end
