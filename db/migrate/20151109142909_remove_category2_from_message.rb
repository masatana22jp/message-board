class RemoveCategory2FromMessage < ActiveRecord::Migration
  def change
    remove_column :messages, :category2, :string
  end
end
