class CreateListTasks < ActiveRecord::Migration
  def change
    create_table :list_tasks do |t|
      t.integer :list_id
      t.integer :task_id
    end
  end
end
