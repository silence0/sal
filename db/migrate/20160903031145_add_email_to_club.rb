class AddEmailToClub < ActiveRecord::Migration[5.0]
  def change
    add_column :clubs, :email, :string
  end
end
