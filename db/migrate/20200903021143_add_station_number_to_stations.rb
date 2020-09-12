class AddStationNumberToStations < ActiveRecord::Migration[5.2]
  def change
    add_column :stations, :number, :integer
  end
end
