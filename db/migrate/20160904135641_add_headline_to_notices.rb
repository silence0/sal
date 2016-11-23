class AddHeadlineToNotices < ActiveRecord::Migration[5.0]
  def change
    add_column :notices, :headline, :text
  end
end
