class CreateSpotmyshots < ActiveRecord::Migration[6.1]
  def change
    create_table :spotmyshots do |t|
      t.string :titre
      t.string :image
      t.string :parametre
      t.string :heure
      t.string :saison
      t.string :coordonnees

      t.timestamps
    end
  end
end
