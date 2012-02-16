module CoursesHelper
  def company_class
    @course.company.name.parameterize if @course.company
  end
end
