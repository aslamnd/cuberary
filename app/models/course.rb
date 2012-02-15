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

class Course < ActiveRecord::Base

  belongs_to :company
  belongs_to :author

  attr_accessible :title, :description, :duration, :released, 
                  :company_id, :author_id

  validates :title,           :presence => true

end
