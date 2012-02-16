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
                  :company_id, :author_id, :difficulty

  default_scope   :order => 'courses.released DESC'

  validates :title,           :presence => true

  DIFFICULTY_NAME = { 0 => "All", 1 => "Beginner", 2 => "Intermediate", 3 => "Advanced" }

  def self.difficulty_name_options
    DIFFICULTY_NAME.to_a.sort
  end

  def difficulty_name
    DIFFICULTY_NAME[difficulty]
  end


end
