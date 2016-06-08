class SubstitutionType < ActiveRecord::Base
  has_many :substitutions, dependent: :destroy
  def to_s
    "#{self.name}"
  end
end
