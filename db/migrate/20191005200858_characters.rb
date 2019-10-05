class Characters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :class
      t.string :race
      t.string :user_id
    end
  end
end
