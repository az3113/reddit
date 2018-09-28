# RolesHelper
module RolesHelper
  def has_role?(role)
    current_user&.has_role?(role)
  end
end
