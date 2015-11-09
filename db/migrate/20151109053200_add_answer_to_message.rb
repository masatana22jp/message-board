class AddAnswerToMessage < ActiveRecord::Migration
  def change
    add_column :messages, :answer, :string
  end
end
