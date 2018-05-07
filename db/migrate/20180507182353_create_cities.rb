class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.integer :time
      t.integer :cost

      t.timestamps
    end
  end
end
