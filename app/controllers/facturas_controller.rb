class FacturasController < ApplicationController
  def list
    @faturas_totales = Factura.all
    @facturas = Factura.where(:cobrada => true)
    @dudoso = Factura.where( "cobrada = :cobrada AND fecha_vencimiento < :today", {cobrada: false, today: (Date.today)})
    @no_vencido = Factura.where( "cobrada  = :cobrada AND fecha_vencimiento >= :today", {cobrada: false, today: (Date.today)})
    @cobrado_mensualmente = serie_cobrado_mensual @facturas
    @total_facturado = serie_cobrado_mensual @facturas_totales
  end

  def serie_cobrado_mensual las_facturas
    cobros_mensuales = Array.new(12)
    for mes in 1 .. 12
      facturas_mes = factura_por_mes(@facturas, mes)
      montos_factura = facturas_mes.blank? ? [0] : facturas_mes.collect{|f| f.monto}
      cobros_mensuales[mes-1] = montos_factura.inject(:+)
    end
    return cobros_mensuales
  end

  def factura_por_mes(facturas, mes)
    return facturas.select{ |factura| (factura.created_at).month == mes}
  end
end
