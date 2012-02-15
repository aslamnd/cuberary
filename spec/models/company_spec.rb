# == Schema Information
#
# Table name: companies
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  url        :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

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
