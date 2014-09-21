class CreateCompetitions < ActiveRecord::Migration
  def change
    create_table :competitions do |t|
      t.string :name
      t.string :description
      t.datetime :start_date
      t.datetime :end_date
      t.string :status

      t.belongs_to :event
      t.belongs_to :competition_format

      t.timestamps
    end
  end
end
