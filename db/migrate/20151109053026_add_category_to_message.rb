class AddCategoryToMessage < ActiveRecord::Migration
  def change
    add_column :messages, :sex, :string
  end
end
