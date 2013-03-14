# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#Facturas 2013
Factura.create(:area => "Comercial", :detalle => "servicios", :fecha_vencimiento => "2013-06-12", :created_at => "2013-01-01", :fecha_cancelacion => "2012-02-10", :cobrada => "true", :monto => 1315370)
Factura.create(:area => "Comercial", :detalle => "servicios", :fecha_vencimiento => "2013-06-12", :created_at => "2013-02-02", :fecha_cancelacion => "2012-02-10", :cobrada => "true", :monto => 131537)
Factura.create(:area => "Comercial", :detalle => "servicios", :fecha_vencimiento => "2013-06-12", :created_at => "2013-03-03", :fecha_cancelacion => "2012-02-10", :cobrada => "true", :monto => 131370)
#Vencidas
Factura.create(:area => "Comercial", :detalle => "servicios", :fecha_vencimiento => "2013-01-10", :created_at => "2013-01-01", :fecha_cancelacion => "", :cobrada => "false", :monto => 122222)
Factura.create(:area => "Comercial", :detalle => "servicios", :fecha_vencimiento => "2013-02-12", :created_at => "2013-02-01", :fecha_cancelacion => "", :cobrada => "false", :monto => 144444)
Factura.create(:area => "Comercial", :detalle => "servicios", :fecha_vencimiento => "2013-03-12", :created_at => "2013-03-01", :fecha_cancelacion => "", :cobrada => "false", :monto => 155555)
#No vencidas
Factura.create(:area => "Comercial", :detalle => "servicios", :fecha_vencimiento => "2013-07-12", :created_at => "2013-02-02", :fecha_cancelacion => "", :cobrada => "false", :monto => 166666)
Factura.create(:area => "Comercial", :detalle => "servicios", :fecha_vencimiento => "2013-08-12", :created_at => "2013-03-03", :fecha_cancelacion => "", :cobrada => "false", :monto => 177777)
Factura.create(:area => "Comercial", :detalle => "servicios", :fecha_vencimiento => "2013-09-12", :created_at => "2013-04-04", :fecha_cancelacion => "", :cobrada => "false", :monto => 188888)


#Facturas 2012
Factura.create(:area => "Comercial", :detalle => "servicios", :fecha_vencimiento => "2012-06-12", :created_at => "2012-01-01", :fecha_cancelacion => "2012-02-10", :cobrada => "true", :monto => 1315370)
Factura.create(:area => "Comercial", :detalle => "servicios", :fecha_vencimiento => "2012-06-12", :created_at => "2012-02-02", :fecha_cancelacion => "2012-02-10", :cobrada => "true", :monto => 131537)
Factura.create(:area => "Comercial", :detalle => "servicios", :fecha_vencimiento => "2012-06-12", :created_at => "2012-03-03", :fecha_cancelacion => "2012-02-10", :cobrada => "true", :monto => 131370)
#Vencidas
Factura.create(:area => "Comercial", :detalle => "servicios", :fecha_vencimiento => "2012-01-10", :created_at => "2012-01-01", :fecha_cancelacion => "", :cobrada => "false", :monto => 122222)
Factura.create(:area => "Comercial", :detalle => "servicios", :fecha_vencimiento => "2012-02-12", :created_at => "2012-02-01", :fecha_cancelacion => "", :cobrada => "false", :monto => 113333)
Factura.create(:area => "Comercial", :detalle => "servicios", :fecha_vencimiento => "2012-01-12", :created_at => "2012-03-01", :fecha_cancelacion => "", :cobrada => "false", :monto => 144444)
#No vencidas
Factura.create(:area => "Comercial", :detalle => "servicios", :fecha_vencimiento => "2013-07-12", :created_at => "2012-02-02", :fecha_cancelacion => "", :cobrada => "false", :monto => 155555)
Factura.create(:area => "Comercial", :detalle => "servicios", :fecha_vencimiento => "2013-08-12", :created_at => "2012-03-03", :fecha_cancelacion => "", :cobrada => "false", :monto => 166666)
Factura.create(:area => "Comercial", :detalle => "servicios", :fecha_vencimiento => "2013-09-12", :created_at => "2012-04-04", :fecha_cancelacion => "", :cobrada => "false", :monto => 177777)
