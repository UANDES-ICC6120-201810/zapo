
class BusSerializer < ActiveModel::Serializer
  attributes def bus_plate_number
    object.BusPlateNumber
  end
end