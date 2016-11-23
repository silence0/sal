class CreateClubs < ActiveRecord::Migration[5.0]
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :logo
      t.text :introduction

      t.timestamps
    end
  end
end
