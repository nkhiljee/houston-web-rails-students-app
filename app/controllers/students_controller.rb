class StudentsController < ApplicationController

        def index
            @students = Student.all
            # byebug
        end
    
        def new
            @student = Student.new
        end
    
        def show
            @student = Student.find(params[:id])
        end
    
        def edit
            @student = Student.find(params[:id])        
        end
    
        def create
            @student = Student.new(post_params)
            if @student.valid?
                @student.save
                redirect_to @student
            else
                flash[:errors] = @student.errors.full_messages
                # byebug
                redirect_to new_student_path
            end
        end
    
        def update      
            @student = Student.find(params[:id])        
            @student.update(post_params)
            redirect_to student_path(@student)    
        end
    
        def destroy
            @student = Student.find(params[:id]) 
            @student.destroy
            redirect_to students_path
        end
    
        def post_params
            params.require(:student).permit(:name, :age, :major, :instructor_id)
        end 
    
    
end
