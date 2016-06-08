class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  validates_presence_of :email
  validates_uniqueness_of :email
  
  has_many :microposts, dependent: :destroy
  has_many :substitutions, dependent: :destroy
  has_many :comments
  def to_s
    "#{self.email}"
  end
end
