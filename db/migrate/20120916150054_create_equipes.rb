class CreateEquipes < ActiveRecord::Migration
  def change
    create_table :equipes do |t|
      t.string :nom_club
      t.string :nom_competition

      t.timestamps
    end
  end
end
