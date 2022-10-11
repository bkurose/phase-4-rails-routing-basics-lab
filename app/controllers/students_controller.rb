class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        students_ordered = Student.order(grade: :desc)
        render json: students_ordered
    end

    def highest_grade
        top_grade = Student.maximum("grade")
        best_student = Student.find_by grade: top_grade
        render json: best_student
    end
end
