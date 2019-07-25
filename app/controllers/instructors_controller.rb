class InstructorsController < ApplicationController
    def index
        @instructors = Instructor.all
        # byebug
    end

    def new
        @instructor = Instructor.new
    end

    def show
        @instructor = Instructor.find(params[:id])
    end

    def edit
        @instructor = Instructor.find(params[:id])        
    end

    def create
        @instructor = Instructor.new(post_params)
        if @instructor.valid?
            @instructor.save
            redirect_to @instructor
        else
            flash[:errors] = @instructor.errors.full_messages
            # byebug
            redirect_to new_instructor_path
        end
    end

    def update
        @instructor = Instructor.find(params[:id])        
        @instructor.update(post_params)
        redirect_to instructor_path(@instructor)    
    end

    def destroy
        @instructor = Instructor.find(params[:id]) 
        @instructor.destroy
        redirect_to instructors_path
    end

    def post_params
        params.require(:instructor).permit(:name)
    end 
end
