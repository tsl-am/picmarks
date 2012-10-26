module ApplicationHelper
  
  def h1_tag(content)
    return "<h1>#{content}</h1>".html_safe
  end
  
end