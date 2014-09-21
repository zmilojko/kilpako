class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.belongs_to :competitor, index: true
      t.belongs_to :race, index: true
      t.integer :number
      t.string :verdict
      t.decimal :result_time

      t.timestamps
    end
  end
end
