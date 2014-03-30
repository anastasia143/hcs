class GetTask < ActiveRecord::Migration

   def change
      create_table :tasks do |t|
           t.string :file_name
      end
    end

end