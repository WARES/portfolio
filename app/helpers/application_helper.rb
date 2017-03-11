module ApplicationHelper
  def sample_helper
    "<p>My helper</p>".html_safe
  end

  def login_helper
    if current_user.is_a?(GuestUser)
      (link_to "Login", user_session_path) +
      "<br>".html_safe +
       (link_to "Register", new_user_registration_path)
    else
      link_to "Logout", destroy_user_session_path, method: :delete
    end
  end

  def source_helper(layout_name)
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]} and you ar on the #{layout_name}"
      content_tag(:p, greeting, class: "source-greeting")
    end
  end

  def copyright_generator
    DevcampViewTool::Renderer.copyright 'Enrique Nares', 'All rights reserved'
  end
end
