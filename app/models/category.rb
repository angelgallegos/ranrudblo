class Category < ActiveRecord::Base
  has_many :microposts, dependent: :destroy
  def to_s
    "#{self.name}"
  end
end
