class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show

  end

  def activity
      @student = Student.find(params[:id])
   if  @student.active == true
      # render 'activity'
        @student.active =false
        @student.save
    else
       @student.active = true
       @student.save
       #redirect_to student_path(@student)
    end
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end

end
