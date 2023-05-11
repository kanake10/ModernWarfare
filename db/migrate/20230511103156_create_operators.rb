class CreateOperators < ActiveRecord::Migration[7.0]
  def change
    create_table :operators do |t|
      t.string :name
      t.string :image
      t.string :unit

      t.timestamps
    end
  end
end
