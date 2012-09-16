class CreateAdversaires < ActiveRecord::Migration
  def change
    create_table :adversaires do |t|
      t.string :nom
      t.references :equipe

      t.timestamps
    end
    add_index :adversaires, :equipe_id
  end
end
