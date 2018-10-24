class CreateClientes < ActiveRecord::Migration[5.2]
  def change
    create_table :clientes do |t|
      t.integer :rfc
      t.string :nombre_cliente

      t.timestamps
      t.references :clientes, foreign_key: true
    end
  end
end
