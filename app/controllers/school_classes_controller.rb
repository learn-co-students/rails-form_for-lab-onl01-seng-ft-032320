class SchoolClassesController < ApplicationController 
    before_action :find_class, only: [:show, :edit, :update]
    
    def new 
        @class = SchoolClass.new
    end 
    
    def create 
        @class = SchoolClass.new(class_params(:title, :room_number))
        @class.save
        redirect_to school_class_path(@class)
    end 

    def show
    end

    def edit 
    end

    def update 
        @class.update(class_params(:title, :room_number))
        redirect_to school_class_path(@class)
    end

    private 

    def find_class 
        @class = SchoolClass.find_by_id(params[:id])
    end

    def class_params(*args)
        params.require(:school_class).permit(*args)
    end
end