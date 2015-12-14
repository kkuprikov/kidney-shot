class CreateTasksUsers < ActiveRecord::Migration
  def self.up
    create_table :tasks_users, :id => false do |t|
      t.integer :task_id
      t.integer :user_id
    end

    add_index :users_tasks, [:user_id, :task_id], unique: true
  end

  def self.down
    drop_table :tasks_users
  end
end
