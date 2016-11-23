class AddGradeAndCollegeToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :grade, :string
    add_column :users, :college, :string
  end
end
