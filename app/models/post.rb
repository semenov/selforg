class Post < ActiveRecord::Base
  validates_presence_of :title, :content
  named_scope :published, :conditions => {:published => true}  
end
