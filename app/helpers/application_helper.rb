module ApplicationHelper


def is_admin?
  current_user.try(:admin) == true
end

end
