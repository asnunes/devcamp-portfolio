module ApplicationHelper
  def login_helper
    if current_user.is_a?(GuestUser)
      (link_to "Register",  new_user_registration_path, method: :get) +
      "<br>".html_safe +
      (link_to "Login",  new_user_session_path, method: :get)
    else
      link_to "Logout", destroy_user_session_path, method: :delete
    end
  end

  def source_helper
    if session[:source]
      content = "You came from #{session[:source]}..."
      content_tag :p, content, class: "source-tag"
    end
  end
end
