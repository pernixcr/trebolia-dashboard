require 'spec_helper'

def registro_facturas
  registro_facturas ||= FacturasController.create
end

def compare_series(serie_1, serie_2)  
  for mes in 0 ... 12
      if serie_1[mes] != serie_2[mes]
        return false
      end
    end
 return true
end

describe FacturasController do

  it "Should calculate total amount in invoices per month" do
    get :list
    facturas.serie_facturado_mensual.

  end
end
