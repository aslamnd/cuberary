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

class Author < ActiveRecord::Base

  has_many :courses

  validates   :name,        presence: true

  def to_s
    name
  end

end
