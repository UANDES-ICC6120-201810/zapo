module API
  module V1
    class BusStopServices < Grape::API
      include API::V1::Defaults
      resource :busstopservices do
        desc "Buses estimated waiting time"
        params do
          requires :token, type: String, desc: "Token of the Point"
        end
        get ":token", root: "busstopservice" do
          accessPoint = AccessPoint.where(Token: permitted_params[:token])
          busStopId = accessPoint.busStop_id
          BusStopService.where(busStop_id: busStopId)
        end
      end
    end
  end
end