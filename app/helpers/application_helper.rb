# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  
  FLASH_TYPES = [:notice, :error, :warning, :success, :message]
  
  def display_flash(type = nil)
    html = ""
    
    if type.nil?
      FLASH_TYPES.each { |name| html << display_flash(name) }
    else
      return flash[type].blank? ? "" : "<div class=\"flash #{type}\"><p>#{flash[type]}</p></div>"
    end
    
    html
  end
  
end
