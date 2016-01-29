class AddMessagesidToAnswer < ActiveRecord::Migration
  def change
    add_reference :answers, :messages, index: true, foreign_key: true
  end
end
