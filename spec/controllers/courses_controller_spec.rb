require 'spec_helper'

describe CoursesController do

  let(:course_attr) { Factory.attributes_for(:course) }
  let(:course) { Course.create!(course_attr) }

  describe "GET index" do
    before { get :index }
    it { should respond_with(:success) }
  end

  describe "GET show" do
    before { get :show, id: course } 
    it { should respond_with(:success) }
  end

  describe "GET new" do
    before { get :new }
    it { should respond_with(:success) }
  end

  describe "POST create" do
    context "success" do
      before { post :create, course: course_attr }

      it "creates a course" do
        expect {
          post :create, course: course_attr
        }.to change(Course, :count).by(1)
      end

      it { should redirect_to( course_path(assigns(:course)) ) }
      it { should set_the_flash.to(/created/i) }
    end

    context "failure" do
      before { course_attr.merge!(:title => "") }
      before { post :create, course: course_attr }

      it "doesn't create a course" do
        expect {
          post :create, course: course_attr
        }.to_not change(Course, :count).by(1)
      end

      it { should render_template('new') }
    end
  end

end
