FactoryGirl.define do
  factory :factura do
    monto 1000
    created_at "2013-01-01"
    cobrada true
    fecha_vencimiento (Date.today)-2.days
  end
end
