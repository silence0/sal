class AddColumnToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :introduction, :text, default: "这个人很懒，什么都没留下。。"
  end
end
