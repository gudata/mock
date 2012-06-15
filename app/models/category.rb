# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  text       :string(255)
#  title      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Category < ActiveRecord::Base
  attr_accessible :text, :title
  has_many :comments
end
