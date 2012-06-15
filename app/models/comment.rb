# == Schema Information
#
# Table name: comments
#
#  id          :integer          not null, primary key
#  email       :string(255)
#  text        :text
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Comment < ActiveRecord::Base
  attr_accessible :email, :text, :category_id
  belongs_to :category
end
