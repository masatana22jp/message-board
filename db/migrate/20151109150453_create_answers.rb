class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :name
      t.string :age
      t.string :job
      t.string :area
      t.string :body

      t.timestamps null: false
    end
  end
end
