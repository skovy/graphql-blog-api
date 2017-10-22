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
  alias_attribute :author, :user

  belongs_to :post
  belongs_to :user

  # avoid duplicate comments by the same user on the same post
  validates :text, presence: true, uniqueness: { scope: [:user, :post] }
end
