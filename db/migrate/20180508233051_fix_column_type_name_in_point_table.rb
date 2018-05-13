class FixColumnTypeNameInPointTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :points, :type, :point_type
  end
end
