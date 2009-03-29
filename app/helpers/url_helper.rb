module UrlHelper
  
  def post_path(post)
    super({
      :year => post.created_at.strftime('%Y'), 
      :month => post.created_at.strftime('%m'),
      :day => post.created_at.strftime('%d'),
      :slug => post.slug
      })
  end
  
  
  
#  def post_path(post)
#    post.created_at.strftime("/%Y/%m/%d/") + post.slug
#  end
end
