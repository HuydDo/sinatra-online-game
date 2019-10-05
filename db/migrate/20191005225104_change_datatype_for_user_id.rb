class ChangeDatatypeForUserId < ActiveRecord::Migration
  def change
    change_column :characters, :user_id, :integer
  end
end
