class RenameMessagesIdColumnToAnswer < ActiveRecord::Migration
  def change
    rename_column :answers, :messages_id, :message_id
  end
end
