# == Schema Information
#
# Table name: authors
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

require 'spec_helper'

describe Author do

  describe "attributes" do
    it { should respond_to(:name, :description) }
  end

  describe "relations" do
    it { should have_many(:courses) }
  end

  describe "validations" do
    it { should validate_presence_of(:name) }
  end

end
