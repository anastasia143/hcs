class TaskfilesController < ApplicationController
   def new
      @taskfile = TaskFile.new
   def create
      @taskfile = Contact.new taskFile_params

      unless taskFile_params.nil?        
         @taskfile.save
      end
   end
   end
   def index
      @taskfiles = TaskFile.all
   end
  def upload
      uploaded_io = params[:taskFile][:f]
      File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
      file.write(uploaded_io.read)
  end
   private
      def taskFile_params
          params.require(:task_file).permit(:name, :comment, :date)
      end
end
end
