class ColumnsNameFix < ActiveRecord::Migration[5.2]
  def change
    #rename_column :table_name, :old_column, :new_column
    rename_column :access_group_bus_stops, :accessGroup_id, :access_group_id
    rename_column :access_group_bus_stops, :busStop_id, :bus_stop_id
    rename_column :access_group_services, :accessGroup_id, :access_group_id
    rename_column :access_groups, :Name, :name
    rename_column :access_groups, :Description, :description
    rename_column :bus_events, :BusSpeed, :bus_speed
    rename_column :bus_events, :busStop_id, :bus_stop_id
    rename_column :bus_events, :EventTime, :event_time
    rename_column :bus_services, :CapturedAt, :captured_at
    rename_column :bus_stop_congestions, :busStop_id, :bus_stop_id
    rename_column :bus_stop_congestions, :EventTime, :event_time
    rename_column :bus_stop_congestions,:AmountOfPeople, :amount_of_people
    rename_column :bus_stop_services, :busStop_id, :bus_stop_id
    rename_column :bus_stop_services, :LastArrivalEstimation, :last_arrival_estimation
    rename_column :bus_stop_services, :CapturedAt, :captured_at
    rename_column :bus_stops, :Name, :name
    rename_column :bus_stops, :Code, :code
    rename_column :bus_stops, :Location, :location
    rename_column :buses, :BusPlateNumber, :bus_plate_number
    rename_column :operators, :Name, :name
    rename_column :operators, :OperatorNumber, :operator_number
    rename_column :services, :RouteCode, :route_code
    rename_column :subscribed_customers, :Name, :name
    rename_column :subscribed_customers, :accessGroup_id, :access_group_id
    rename_column :user_roles, :Name, :name
    rename_column :user_roles, :Description, :description
  end
end
