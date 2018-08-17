module LoginHelper
  def auth_buttons 
    if current_user
      (link_to "Log out", destroy_user_session_path, method: :delete) + (link_to "Profile", show_user_path)
    else
      (link_to "Log In", new_user_session_path) + (link_to "Register", new_user_registration_path)
    end 
  end
end