# ------------- Aqui se definen los atributos de la tabla y sus nombres que se van a mostrar en el JSON -------------
class OperatorSerializer < ActiveModel::Serializer
  attributes def operator_name
    object.Name
  end,
  def operator_number
    object.OperatorNumber
  end
end