class BusStopService < ApplicationRecord
  belongs_to :bus_stop
  belongs_to :service
end
