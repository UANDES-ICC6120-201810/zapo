class DropConfigurationFiles < ActiveRecord::Migration[5.2]
  def change
    drop_table :configuration_files
  end
end
