class AddFilePackageReferenceToFileToUpdate < ActiveRecord::Migration[5.2]
  def change
    add_reference :file_to_updates, :file_package, foreign_key: true
  end
end
