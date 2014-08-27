class Lesson < ActiveRecord::Base
  validates :name, :presence => :true
  validates :number, :uniqueness => :true
  validates :number, :presence => :true
  validates :number, :numericality => { :less_than => 100 }
  validates :number, :numericality => { :greater_than => 0 }
end



