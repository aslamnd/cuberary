class CoursesController < ApplicationController

  before_filter :authenticate_user!
  before_filter :find_course, only: [:show]

  def index
    @courses = Course.all
  end

  def show
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(params[:course])
    if @course.save
      redirect_to @course, flash: { success: "Course has been created."}
    else
      render 'new'
    end
  end

  private

    def find_course
      @course = Course.find(params[:id])
    end

end
