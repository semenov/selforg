# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  # Replacement for Rails' default Markdown helper which uses Maruku instead
  # of BlueCloth.
  def markdown(text)
    text.blank? ? "" : Maruku.new(text).to_html
  end
  
  def nice_date(date)
    date.strftime("%d.%m.%Y")
  end
  
end
