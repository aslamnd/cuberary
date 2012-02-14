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

class User < ActiveRecord::Base

  validates :first_name,            presence: true
  validates :last_name,             presence: true
   
end
