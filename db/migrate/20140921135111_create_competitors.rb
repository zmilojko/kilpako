class CreateCompetitors < ActiveRecord::Migration
  def change
    create_table :competitors do |t|
      t.integer :number
      t.belongs_to :user, index: true
      t.belongs_to :competition, index: true

      t.timestamps
    end
  end
end
