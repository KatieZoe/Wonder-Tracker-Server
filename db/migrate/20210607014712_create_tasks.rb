class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.text :name
      t.text :due_date
      t.integer :status
      t.text :notes
      t.text :task_url
      t.integer :user_id
    end
  end
end
