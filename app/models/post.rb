# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  text       :text             not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ApplicationRecord
  alias_attribute :author, :user

  belongs_to :user

  has_many :comments

  validates :title, presence: true, uniqueness: { scope: :user }
  validates :text, presence: true
end
