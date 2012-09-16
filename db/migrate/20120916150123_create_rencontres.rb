class CreateRencontres < ActiveRecord::Migration
  def change
    create_table :rencontres do |t|
      t.references :equipe
      t.references :adversaire
      t.date :jour
      t.time :heure
      t.boolean :domicile
      t.boolean :exempt
      t.boolean :reportee
      t.integer :numero

      t.timestamps
    end
    add_index :rencontres, :equipe_id
    add_index :rencontres, :adversaire_id
  end
end
