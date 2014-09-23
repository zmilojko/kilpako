class CreateEventPages < ActiveRecord::Migration
  def change
    create_table :event_pages do |t|
      t.string :name
      t.string :content
      t.belongs_to :event, index: true

      t.timestamps
    end
  end
end
