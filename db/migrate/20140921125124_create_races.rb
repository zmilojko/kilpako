class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :name
      t.string :status
      t.string :spots
      t.belongs_to :competition, index: true
      t.belongs_to :race_format, index: true

      t.timestamps
    end
  end
end
