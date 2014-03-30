
class WelcomeController < ApplicationController

  def index

  end


  def new
      @task = Task.new
  end
  def create
      @task = Task.new
  end
  def show
      @comment = Comment.new
  end
  #def upload
  #uploaded_io = params[:person][:homework]
  #File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
  #  file.write(uploaded_io.read)
  #end
end
