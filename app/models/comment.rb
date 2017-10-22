# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  text       :text             not null
#  post_id    :integer          not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :text, presence: true
end
