class RemoveAnswerFromMessage < ActiveRecord::Migration
  def change
    remove_column :messages, :Answer, :string
  end
end
