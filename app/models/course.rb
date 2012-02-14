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
#

class Course < ActiveRecord::Base
  attr_accessible :title, :description, :duration, :released

  validates :title,           :presence => true

end
