class CreateStudents < ActiveRecord::Migration

  def change

    create_table :students do |t|

      t.string :name

      t.string :surname

      t.float :phone

      t.string :email

      t.float :h1t1

      t.text :h1t1_comment

      t.float :h1t2

      t.text :h1t2_comment

      t.float :h1t3

      t.text :h1t3_comment
      t.float :h2t1
      t.text :h2t1_comment
      t.float :h3t1
      t.text :h3t1_comment
      t.float :h3t2
      t.text :h3t2_comment

      t.timestamps
    end
  end
end
