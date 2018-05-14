class CreateFileToUpdates < ActiveRecord::Migration[5.2]
  def change
    create_table :file_to_updates do |t|
      t.string :name
      t.string :file

      t.timestamps
    end
  end
end
