class StudentsController < ApplicationController
   def new
      @student = Student.new
   end
   def index
      @students = Student.all
   end
   def create
      @student = Student.new(student_params)

      if @student.save
          redirect_to @student
      else
          render 'new'
      end
   end
   def edit
      @student = Student.find(params[:id])
   end
   private
      def student_params
          params.require(:student).permit(:surname, :name, :phone, :h1t1, :h1t2, :h1t3, :h2t1, :h3t1, :h3t2)
      end
end
