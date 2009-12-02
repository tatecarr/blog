class Blog < ActiveRecord::Base
  has_many :posts
  validates_presence_of :title
  validates_uniqueness_of :title
  validates_length_of :title, :minimum => 4
  validates_length_of :title, :maximum => 50
end
