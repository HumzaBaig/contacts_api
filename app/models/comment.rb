# == Schema Information
#
# Table name: comments
#
#  id               :integer          not null, primary key
#  body             :string           not null
#  author_id        :integer          not null
#  commentable_id   :integer          not null
#  commentable_type :string           not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Comment < ActiveRecord::Base
  validates :body, :author_id, presence: true
  validates :commentable_id , presence: true, uniqueness: {scope: :commentable_id}

  belongs_to :author,
    class_name: :User,
    primary_key: :id,
    foreign_key: :author_id

  belongs_to :commentable, polymorphic: true
end
