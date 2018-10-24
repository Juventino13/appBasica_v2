class CreateDetalleOrdens < ActiveRecord::Migration[5.2]
  def change
    create_table :detalle_ordens do |t|
      t.references :producto, foreign_key: true
      t.integer :cantidad
      t.integer :precio

      t.timestamps
    end
  end
end
