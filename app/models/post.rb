class Post < ApplicationRecord
  validates :title, :presence => true
  #has_many is an association
  has_many :comments

  def self.method_missing(name, *args, &block)
    if name =~ /\Aquery_by_(.+)\z/
      where($1 => args[0]).first
    else
      super
    end
  end

  def self.respond_to_missing?(name, include_all=false)
    name.to_s.start_with?("query_by_") || super
  end
end
