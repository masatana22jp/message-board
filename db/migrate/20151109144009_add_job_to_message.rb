class AddJobToMessage < ActiveRecord::Migration
  def change
    add_column :messages, :job, :string
  end
end
