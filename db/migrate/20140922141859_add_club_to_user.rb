class AddClubToUser < ActiveRecord::Migration
  def change
    add_column :users, :club, :string
  end
end
