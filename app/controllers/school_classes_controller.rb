class SchoolClassesController < ApplicationController

    before_action :find_class, only: [:show, :edit, :update]

    def new
        @class = SchoolClass.new
    end

    def create 
        @class = SchoolClass.new(school_classes_params(:title, :room_number))
        @class.save
        redirect_to school_class_path(@class)
    end

    def show
    end

    def edit
    end

    def update
        @class = SchoolClass.update(school_classes_params(:title, :room_number))
        redirect_to school_class_path(@class)
    end

    private

    def school_classes_params(*args)
        params.require(:school_class).permit(*args)
    end

    def find_class
        @class = SchoolClass.find_by_id(params[:id])
    end

end