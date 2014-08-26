class Lesson < ActiveRecord::Base
  validates :name, :presence => :true
  validates :number, :uniqueness => :true
end
