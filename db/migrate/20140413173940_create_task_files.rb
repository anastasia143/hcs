class CreateTaskFiles < ActiveRecord::Migration
  def change
    create_table :task_files do |t|
      t.string :name
      t.string :date
      t.string :comment
      t.integer :size

      t.timestamps
    end
  end
end
