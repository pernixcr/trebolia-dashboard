require 'spec_helper'
describe FacturasController do
  before(:each) do
    controller.class.skip_before_filter :authenticate_user!
  end

  context "#list" do
    let(:factura){FactoryGirl.create :factura}
#    let(:factura1){FactoryGirl.create :factura, :cobrada => "false", :create_at => "2013-05-05"}
#    let(:factura2){FactoryGirl.create :factura, :cobrada => "false", :create_at => "2013-04-04"}

    it "Should calculate total amount invoiced per month" do
      get :list
      assigns[:cobrado_mensualmente].should == [100000,0, 0, 0, 0, 0, 0, 0, 0,0,0,0]
    end

 #   it "Should calculate total amount of invoices per month" do
 #     get :list
 #     assigns[:total_facturado].should == [0,0,0,100000,100000,0,0,0,0,0,0,0]
 #   end
  end
end
