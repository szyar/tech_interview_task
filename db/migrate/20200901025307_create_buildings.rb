class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.string :name
      t.integer :rental_fees
      t.string :address
      t.integer :build_year
      t.string :remark

      t.timestamps
    end
  end
end
