class AddTasks < ActiveRecord::Migration

  def self.up

    add_column :contacts : image_file_name :string

    add_column :contacts : image_content_type :string

    add_column :contacts : image_file_size :integer

    end

  end

 

 def self.down

remove_column :contacts :image_file_name

remove_column :contacts :image_content_type

remove_column :contacts :image_file_size

 end

end