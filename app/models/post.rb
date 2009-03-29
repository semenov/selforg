class Post < ActiveRecord::Base
  validates_presence_of :title, :content, :slug
  validates_uniqueness_of :slug
  validates_format_of :slug, :with => /\A[-a-z0-9]+\Z/i
  named_scope :published, :conditions => {:published => true} , :order => "created_at DESC"  
  
  PageSeparator = /^\s*---\s*$/
  
public
  
  def excerpt
    content.split(PageSeparator).first
  end

  def has_more?
    content.index(PageSeparator)
  end
  
  def self.find_by_permalink(year, month, day, slug)
    find_by_slug(slug, :conditions => ["DATE(created_at) = ?", "#{year}-#{month}-#{day}"])
  end
  
end
