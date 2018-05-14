class AddSentAndInstalledToFilePackagesAccessPoints < ActiveRecord::Migration[5.2]
  def change
    add_column :file_packages_access_points, :sent, :datetime
    add_column :file_packages_access_points, :installed, :datetime
  end
end
