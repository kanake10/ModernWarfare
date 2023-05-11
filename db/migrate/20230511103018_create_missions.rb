class CreateMissions < ActiveRecord::Migration[7.0]
  def change
    create_table :missions do |t|
      t.string :mission_name
      t.string :imageUrl
      t.string :location
      t.string :date
      t.string :rewards

      t.timestamps
    end
  end
end
