# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  
  layout "main"
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => '7333804dc0d8437205fe38c262ddb9a8'
  
  def post_url(post)
    super({
      :year => post.created_at.strftime('%Y'), 
      :month => post.created_at.strftime('%m'),
      :day => post.created_at.strftime('%d'),
      :slug => post.slug
      })
  end  
  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  # filter_parameter_logging :password
end
