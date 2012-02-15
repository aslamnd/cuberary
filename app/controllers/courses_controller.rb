class CoursesController < ApplicationController

  before_filter :authenticate_user!
  before_filter :find_course, only: [:show, :edit, :update]

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
      flash[:success] = "Course has been created."
      redirect_to @course
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @course.update_attributes(params[:course])
      flash[:success] = "Course has been updated."
      redirect_to @course
    else
      flash[:error] = "Course has not been updated."
      render 'edit'
    end
  end

  private

    def find_course
      @course = Course.find(params[:id])
    end

end
