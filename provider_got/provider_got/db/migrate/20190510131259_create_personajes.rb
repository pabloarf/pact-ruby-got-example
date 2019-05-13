class CreatePersonajes < ActiveRecord::Migration[5.2]
  def change
    create_table :personajes do |t|
      t.string :nombre
      t.integer :edad
      t.string :casa
      t.string :actor

      t.timestamps
    end
  end
end
