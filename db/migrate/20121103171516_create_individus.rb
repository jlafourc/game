class CreateIndividus < ActiveRecord::Migration
  def change
    create_table :individus do |t|
      t.string :nom
      t.string :prenom
      t.date :date_de_naissance
      t.string :sexe

      t.timestamps
    end
  end
end
