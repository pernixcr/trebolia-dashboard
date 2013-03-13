class FacturasController < ApplicationController
  def list
    @year = params[:date].nil? ? Time.now.year : params[:date][:year].to_i
    p @year
    facturas_anuales = Factura.all.select{|f| f.created_at.year == @year}
    @dudoso = facturas_anuales.select{ |f| f.cobrada == false and f.fecha_vencimiento < Date.today}
    @no_vencido =  facturas_anuales.select{ |f| f.cobrada == false and f.fecha_vencimiento >= Date.today}
    @cobrado_mensualmente = serie_cobrado_mensual facturas_anuales.select{|f| f.cobrada == true}
    @total_facturado = serie_cobrado_mensual facturas_anuales
  end

  def serie_cobrado_mensual facturas
    cobros_mensuales = Array.new(12)
    for mes in 1 .. 12
      facturas_mes = factura_por_mes(facturas, mes)
      montos_factura = facturas_mes.blank? ? [0] : facturas_mes.collect{|f| f.monto}
      cobros_mensuales[mes-1] = montos_factura.inject(:+)
    end
    return cobros_mensuales
  end

  def factura_por_mes(facturas, mes)
    return facturas.select{ |factura| (factura.created_at).month == mes}
  end
end
