class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.references :building, foreign_key: true
      t.string :railway_name
      t.string :station_name
      t.integer :minutes_to_walk

      t.timestamps
    end
  end
end
