class AddCategory2ToMessage < ActiveRecord::Migration
  def change
    add_column :messages, :category2, :string
  end
end
