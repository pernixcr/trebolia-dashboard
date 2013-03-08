require 'spec_helper'

def registro_facturas
  registro_facturas || = FacturasController.create
end

describe FacturasController do

  it "Should calculate total amount in invoices per month" do
    get :list
    
    facturas.serie_facturado_mensual 

  end
end
