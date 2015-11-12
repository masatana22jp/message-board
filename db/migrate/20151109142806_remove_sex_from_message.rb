class RemoveSexFromMessage < ActiveRecord::Migration
  def change
    remove_column :messages, :Sex, :string
  end
end
