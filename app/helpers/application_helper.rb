module ApplicationHelper
  require 'open-uri'

  def render_url(url)
    open url do |f|
      f.read.html_safe   # remove the 'html_safe' if you're on Rails 2.x
    end
  end
end