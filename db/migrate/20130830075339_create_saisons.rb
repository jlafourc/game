class CreateSaisons < ActiveRecord::Migration
  def change
    create_table :saisons do |t|
      t.string :nom
      t.date :debut
      t.date :fin

      t.timestamps
    end
  end
end
