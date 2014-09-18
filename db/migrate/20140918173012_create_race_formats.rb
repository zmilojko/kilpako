class CreateRaceFormats < ActiveRecord::Migration
  def change
    create_table :race_formats do |t|
      t.string :name

      t.timestamps
    end
  end
end
