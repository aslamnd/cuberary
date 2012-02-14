# == Schema Information
#
# Table name: users
#
#  id            :integer         not null, primary key
#  first_name    :string(255)     default(""), not null
#  last_name     :string(255)     default(""), not null
#  date_of_birth :datetime
#  short_bio     :text
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#

require 'spec_helper'

describe User do

  let(:user) { Factory(:user) }

  subject { user }

  it { should respond_to :first_name }
  it { should respond_to :last_name }

  it "requires a first name" do
    user.first_name = " "
    should_not be_valid
  end

  it "requires a last name" do
    user.last_name = " "
    should_not be_valid
  end

end
