class CreateFilePackagesAccessPointsJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :file_packages_access_points, id: false do |t|
      t.belongs_to :file_package, index: true
      t.belongs_to :access_point, index: true
    end
  end
end
