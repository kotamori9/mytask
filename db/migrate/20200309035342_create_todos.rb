class CreateTodos < ActiveRecord::Migration[5.0]
  def change
    create_table :todos do |t|
      t.string :todo
      t.string :task_id
      t.string :user_id
      t.string :date
      t.timestamps
    end
  end
end
