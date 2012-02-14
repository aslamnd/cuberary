require 'spec_helper'

describe PagesController do


  describe "GET index" do
    it "returns a http success" do
      get :index
      response.should be_success
    end

    it "renders the site layout" do
      get :index
      response.should render_template("layouts/site")
    end
  end

end
