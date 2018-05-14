class OperatorSerializer < ActiveModel::Serializer
  attributes def operator_name
    object.Name
  end,
  def operator_number
    object.OperatorNumber
  end
end