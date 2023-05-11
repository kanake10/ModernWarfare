class CreateMaps < ActiveRecord::Migration[7.0]
  def change
    create_table :maps do |t|
      t.string :map_name
      t.string :imageUrl
      t.string :players

      t.timestamps
    end
  end
end
