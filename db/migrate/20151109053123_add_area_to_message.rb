class AddAreaToMessage < ActiveRecord::Migration
  def change
    add_column :messages, :area, :string
  end
end
