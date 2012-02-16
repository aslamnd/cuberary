# == Schema Information
#
# Table name: courses
#
#  id          :integer         not null, primary key
#  title       :string(255)     default(""), not null
#  description :text
#  duration    :string(255)
#  released    :datetime
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#  company_id  :integer
#

require 'spec_helper'

describe Course do

  describe "attributes" do
    it { should respond_to(:title, :description, :duration, :released, :difficulty) }
  end

  describe "relations" do
    it { should belong_to(:company) }
    it { should belong_to(:author) }
  end

  describe "validations" do
    it { should validate_presence_of(:title) }
  end

end
