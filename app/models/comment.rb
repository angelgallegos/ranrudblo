class Comment < ActiveRecord::Base
  validates :content, length: { maximum: 512 }, presence: true
  validates :user_id, presence: true
  belongs_to :user
  belongs_to :micropost
  belongs_to :comment, :class_name => "Comment", :foreign_key => "comment_id"
  has_many :nested_comments, :class_name => "Comment", :foreign_key => "comment_id"
  def to_s
    "#{self.content}"
  end
end
