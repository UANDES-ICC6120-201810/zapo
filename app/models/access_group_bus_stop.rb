class AccessGroupBusStop < ApplicationRecord
  belongs_to :accessGroup
  belongs_to :busStop
end
