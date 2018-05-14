class BusStopService < ApplicationRecord
  belongs_to :busStop
  belongs_to :service
end
