require 'spec_helper'

describe Company do

  describe "attributes" do
    it { should respond_to(:name, :url) }
  end

  describe "relations" do
    it { should have_many(:courses) }
  end

  describe "validations" do
    it { should validate_presence_of(:name) }
    #it { should validate_format_of()}
  end

end
