class CreateFacturas < ActiveRecord::Migration
  def change
    create_table :facturas do |t|
      t.string :area
      t.string :detalle
      t.boolean :cobrada
      t.integer :monto
      t.date :fecha_vencimiento
      t.date :fecha_cancelacion

      t.timestamps
    end
  end
end
