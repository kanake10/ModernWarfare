class CreateGuns < ActiveRecord::Migration[7.0]
  def change
    create_table :guns do |t|
      t.string :name
      t.string :image
      t.string :description
      t.string :real_life

      t.timestamps
    end
  end
end
