class BusEvent < ApplicationRecord
  belongs_to :bus
  belongs_to :busStop
end
