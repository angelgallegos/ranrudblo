class Micropost < ActiveRecord::Base
  attr_accessor :short_content, :formated_date
  before_create :change_content
  before_update :change_content
  belongs_to :category
  belongs_to :user
  has_many :comments
  validates :content, length: { maximum: 1024 }, presence: true
  validates :name, presence: true
  def change_content
    self.content=self.content + "<br/>"
  end
  def short_content
    @short_content=self.content[0..140]+"..."
  end  
  def formated_date
    @formated_date=self.created_at.strftime("%d/%m/%Y")
  end  
end
