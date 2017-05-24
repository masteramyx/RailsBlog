class Post < ApplicationRecord
  validates :title, :presence => true
  #has_many is an association
  has_many :comments
end
