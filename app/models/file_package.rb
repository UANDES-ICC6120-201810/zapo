class FilePackage < ApplicationRecord
  has_many :file_to_updates
  has_and_belongs_to_many :access_points
end
