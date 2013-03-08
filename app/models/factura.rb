class Factura < ActiveRecord::Base
  attr_accessible :area, :cobrada, :detalle, :fecha_cancelacion, :fecha_vencimiento, :monto
end
