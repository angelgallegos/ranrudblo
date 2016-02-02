class User < ActiveRecord::Base
  has_many :microposts, dependent: :destroy
  has_many :comments
  def to_s
    "#{self.name}"
  end
end
