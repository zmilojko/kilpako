class ChangeCompetitorUserNotNull < ActiveRecord::Migration
  def change
    change_column_null :competitors, :user_id, false
  end
end
