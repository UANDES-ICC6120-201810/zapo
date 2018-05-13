class ChangeTypeToBeStringInPoints < ActiveRecord::Migration[5.2]
  def change
    change_column :points, :type, :string
  end
end
