class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.float :number
      t.float :homework
      t.text :condition
      t.date :time

      t.timestamps
    end
  end
end
