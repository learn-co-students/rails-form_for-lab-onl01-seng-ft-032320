
require 'pry'

class SchoolClassesController < ApplicationController
    def index 
        @classes = SchoolClass.all
    end
    
    def show 
        @class = SchoolClass.find_by_id(params[:id])
    end 

    def new
   
    end

    def create 
        @class = SchoolClass.create(params.require(:school_class).permit(:title, :room_number))
        redirect_to school_class_path(@class)
    end 
    
    
    def edit 
        @class = SchoolClass.find_by_id(params[:id])
    end 
    
    def update 
        # binding.pry
        @class = SchoolClass.find_by_id(params[:id])
        @class = SchoolClass.update(params.require(:school_class).permit(:title, :room_number))
        redirect_to school_class_path(@class)
    end
end