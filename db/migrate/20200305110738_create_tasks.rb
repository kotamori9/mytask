class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :content
      t.string :user_id
      t.string :date
      t.timestamps
    end
  end
end
