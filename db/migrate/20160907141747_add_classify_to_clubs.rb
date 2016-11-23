class AddClassifyToClubs < ActiveRecord::Migration[5.0]
  def change
    add_column :clubs, :classify, :string
  end
end
