class CharacterClasses < ActiveRecord::Migration
  def change
    create_table :characterclasses do |t|
      t.string :name
    end 
  end
end
