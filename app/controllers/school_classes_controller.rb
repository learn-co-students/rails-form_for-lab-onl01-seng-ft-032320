class SchoolClassesController < ApplicationController

    def index
        @schoolclasses = SchoolClass.all
        
    end
    
    def new
        @school_class = SchoolClass.new
    end

    def create
        @school_class = SchoolClass.create(params.require(:school_class).permit(:title, :room_number))
        redirect_to school_class_path(@school_class)
    end 

    def show
        @schoolclass = SchoolClass.find(params[:id])
    end

    def edit
        @schoolclass = SchoolClass.find(params[:id])
    end

    def update
        @schoolclass = SchoolClass.find(params[:id])
        @schoolclass.update(params.require(:school_class).permit(:title, :room_number))
        redirect_to school_class_path(@schoolclass)
    end

    private

	def schoolclass_params(*args)     #build out and refractor controller actions
		params.require(:schoolclass).permit(*args)
	end

end