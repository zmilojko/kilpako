class CreateCompetitionFormats < ActiveRecord::Migration
  def change
    create_table :competition_formats do |t|
      t.string :name

      t.timestamps
    end
  end
end
