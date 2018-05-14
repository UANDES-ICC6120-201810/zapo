class AccessPoint < ApplicationRecord
  has_and_belongs_to_many :devices
  has_and_belongs_to_many :file_packages
end
