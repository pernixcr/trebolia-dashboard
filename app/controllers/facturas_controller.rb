class FacturasController < ApplicationController
  def list
    @facturas = Factura.where(:cobrada => true)
    @dudoso = Factura.where( "cobrada = :cobrada AND fecha_vencimiento < :today", {cobrada: false, today: (Date.today)})
    @no_vencido = Factura.where( "cobrada  = :cobrada AND fecha_vencimiento >= :today", {cobrada: false, today: (Date.today)})
  end

  def serie_facturado_mensual
    for month in 1 ... 12
    end
  end

end
