class AddSaisonRefToEquipes < ActiveRecord::Migration
  def change
    add_column :equipes, :saison_id, :integer
    add_index :equipes, :saison_id
  end
end
