class BusStopServiceSerializer < ActiveModel::Serializer
  attributes def route
    Service.find(object.service_id).RouteCode

  end,
      def waiting_time
        object.LastArrivalEstimation
      end
end