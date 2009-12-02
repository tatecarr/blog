class Post < ActiveRecord::Base
  validates_presence_of :body, :title
  belongs_to :blog
  has_many :comments
  validates_length_of :title, :minimum => 4
  validates_length_of :title, :maximum => 50
end
