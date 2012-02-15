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

class Company < ActiveRecord::Base

  has_many :courses

  validates   :name,        presence: true

end
