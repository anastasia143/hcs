class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :surname
      t.float :number
      t.float :homework
      t.float :state
      t.text :comment

      t.timestamps
    end
  end
end
