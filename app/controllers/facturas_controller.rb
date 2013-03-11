class FacturasController < ApplicationController
  def list
    @facturas = Factura.where(:cobrada => true)
    @dudoso = Factura.where( "cobrada = :cobrada AND fecha_vencimiento < :today", {cobrada: false, today: (Date.today)})
    @no_vencido = Factura.where( "cobrada  = :cobrada AND fecha_vencimiento >= :today", {cobrada: false, today: (Date.today)})
    @cobrado_mensualmente = serie_cobrado_mensual
  end

  def serie_cobrado_mensual
    _cobros_mensuales = Array.new(12)
    for mes in 1 .. 12
      _facturas_mes = factura_por_mes(@facturas, mes)
      _montos_factura = _facturas_mes.collect{|factura| factura.monto}
      _cobros_mensuales[mes-1] = _montos_factura.inject(:+)
    end
    return _cobros_mensuales
  end

  def factura_por_mes(facturas, mes)
    return facturas.select{ |factura| (factura.created_at).month }
  end
end
