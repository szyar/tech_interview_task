class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.string :railway_name
      t.string :station_name
      t.integer :minutes_to_walk
      t.references :building, foreign_key: true

      t.timestamps
    end
  end
end
