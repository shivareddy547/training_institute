class CoursesController < InheritedResources::Base

  private

    def course_params
      params.require(:course).permit(:name, :description, :image, :start_date, :end_date)
    end
end

