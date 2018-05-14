class CreateOperators < ActiveRecord::Migration[5.2]
  def change
    create_table :operators do |t|
      t.string :Name
      t.integer :OperatorNumber

      t.timestamps
    end
  end
end
