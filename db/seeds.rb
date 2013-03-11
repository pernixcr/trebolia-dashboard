# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Factura.create(:area => "Comercial", :detalle => "servicios", :fecha_vencimiento => "2013-06-12", :fecha_cancelacion => "2012-02-10", :cobrada => "true", :monto => 1315370)
Factura.create(:area => "Comercial", :detalle => "servicios", :fecha_vencimiento => "2013-02-12", :fecha_cancelacion => "", :cobrada => "false", :monto => 112134)
Factura.create(:area => "Comercial", :detalle => "servicios", :fecha_vencimiento => "2012-10-10", :fecha_cancelacion => "", :cobrada => "false", :monto => 7717)
Factura.create(:area => "Comercial", :detalle => "servicios", :fecha_vencimiento => "2012-06-06", :fecha_cancelacion => "", :cobrada => "false", :monto => 36277)
Factura.create(:area => "Comercial", :detalle => "servicios", :fecha_vencimiento => "2013-06-12", :fecha_cancelacion => "", :cobrada => "false", :monto => 146999)

