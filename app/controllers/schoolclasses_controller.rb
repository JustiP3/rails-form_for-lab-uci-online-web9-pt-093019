class SchoolclassesController < ApplicationController
    def new
        @schoolclass = Schoolclass.new 
    end 

    def create 
        @schoolclass = Schoolclass.new(schoolclass_params)
        @schoolclass.save
        redirect_to schoolclass_path(@schoolclass)
    end 

    def show 
        find_schoolclass
    end 

    def edit
        find_schoolclass
    end 

    def update
        find_schoolclass
        @schoolclass.update(schoolclass_params)
        redirect_to schoolclass_path 
    end 

    private

    def find_schoolclass
        @schoolclass = Schoolclass.find(params[:id])
    end 

    def schoolclass_params
        if params[:schoolclass]
            params.require(:schoolclass).permit(:title, :room_number)
        else 
            params.require(:school_class).permit(:title, :room_number)
        end         
    end 
end
