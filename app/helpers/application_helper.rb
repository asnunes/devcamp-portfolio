module ApplicationHelper
  def login_helper(class_name = "")
    if current_user.is_a?(GuestUser)
      (link_to "Register",  new_user_registration_path, method: :get, class: class_name) +
      " ".html_safe +
      (link_to "Login",  new_user_session_path, method: :get, class: class_name)
    else
      link_to "Logout", destroy_user_session_path, method: :delete, class: class_name
    end
  end

  def source_helper
    if session[:source]
      content = "You came from #{session[:source]}..."
      content_tag :p, content, class: "source-tag"
    end
  end

  def copyright_generator
    content_tag :p, "Alexandre Nunes | 2019 - MIT"
  end
end
