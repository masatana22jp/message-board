class ChangeCategoryToMessage < ActiveRecord::Migration
  def change
  def up
    change_column :Messages, :category, :intger, null: false
  end

  #変更前の型
  def down
    change_column :Messages, :sex, :integer
  end
  end
end
