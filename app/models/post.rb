class Post < ActiveRecord::Base
  validates_presence_of :title, :content
  named_scope :published, :conditions => {:published => true} , :order => "created_at DESC"  
  
  PageSeparator = /^\s*---\s*$/
  
public
  
  def excerpt
    content.split(PageSeparator).first
  end

  def has_more?
    content.index(PageSeparator)
  end
  
end
