class AddStatusToEvents < ActiveRecord::Migration
  def change
    add_column :events, :status, :string, defaul: :not_published
    change_column_default :competitions, :status, :not_published
    change_column_default :races, :status, :not_started
  end
end
