class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students

    def grades
        # grades = Grade.all
        # render json: grades
        @students = Student.order(grade: :desc)
        render json: @students
    end

    end
end
