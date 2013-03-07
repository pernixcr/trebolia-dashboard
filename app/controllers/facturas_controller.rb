class FacturasController < ApplicationController
  def list
    @facturas = RegistroFactura.where(:FacturaCobrada => true)
    @dudoso = RegistroFactura.where( "FacturaCobrada = :cobrada AND FechaVencimientoFactura < :today", {cobrada: false, today: (Date.today)})
    @no_vencido = RegistroFactura.where( "FacturaCobrada = :cobrada AND FechaVencimientoFactura >= :today", {cobrada: false, today: (Date.today)})
  end
end
