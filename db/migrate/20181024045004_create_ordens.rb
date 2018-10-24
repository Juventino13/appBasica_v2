class CreateOrdens < ActiveRecord::Migration[5.2]
  def change
    create_table :ordens do |t|
      t.references :cliente, foreign_key: true
      t.integer :num_orden
      t.date :fecha

      t.timestamps
    end
  end
end
