module UsersHelper
  # helper method to check if current user is admin
  def is_admin?
    current_user === User.find_by(username: "admin")
  end
end
