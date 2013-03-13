require 'spec_helper'
describe FacturasController do
  before(:each) do
    controller.class.skip_before_filter :authenticate_user!
  end

  context "#list" do
    let(:factura_enero_2013_cobrada){FactoryGirl.create :factura}
    let(:factura_mayo_2013_sin_cobrar){FactoryGirl.create :factura, :cobrada => false, :created_at => "2013-05-05"}
    let(:factura_junio_2013_sin_cobrar_no_vencida){FactoryGirl.create :factura, :cobrada => false, :created_at => "2013-06-04", :fecha_vencimiento => "2014-01-01"}
    let(:factura_mayo_2012_sin_cobrar){FactoryGirl.create :factura, :cobrada => false, :created_at => "2012-05-04"}
    let(:factura_abril_2012_cobrada){FactoryGirl.create :factura, :created_at => "2012-04-04"}
    let(:factura_junio_2012_sin_cobrar_no_vencida){FactoryGirl.create :factura, :cobrada => false, :created_at => "2012-06-04", :fecha_vencimiento => "2014-02-02"}

    before (:each) do
      factura_enero_2013_cobrada
      factura_mayo_2013_sin_cobrar
      factura_junio_2013_sin_cobrar_no_vencida
      factura_mayo_2012_sin_cobrar
      factura_abril_2012_cobrada
      factura_junio_2012_sin_cobrar_no_vencida
    end

    it "Calculates the total amount paid per month at the current year" do
      get :list
      assigns[:cobrado_mensualmente].should == [factura_enero_2013_cobrada.monto,0,0,0,0,0,0,0,0,0,0,0]
    end

    it "Calculate the total amount of paid or not of invoices per month at the current year" do
      get :list
      assigns[:total_facturado].should == [factura_enero_2013_cobrada.monto,0,0,0,factura_mayo_2013_sin_cobrar.monto,factura_junio_2013_sin_cobrar_no_vencida.monto,0,0,0,0,0,0]
    end

    it "Calculates the total amount paid by month in a specific year" do
      post :list, :date => {:year =>2012}
      assigns[:cobrado_mensualmente].should == [0,0,0,1000,0,0,0,0,0,0,0,0]
    end
    it "Calculate the total amount of paid or not of invoices per month in a specific year" do
      get :list, :date => {:year =>2012}
      assigns[:total_facturado].should == [0,0,0,factura_abril_2012_cobrada.monto,factura_mayo_2012_sin_cobrar.monto,factura_junio_2013_sin_cobrar_no_vencida.monto,0,0,0,0,0,0]
    end
  end
end
