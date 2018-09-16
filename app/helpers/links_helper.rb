module LinksHelper
  def contact_user_partial_path
    @link.user.id == current_user.id || has_role?(:admin) ? 'links/show/signed_in_links' : 'links/show/non_signed_in_links'
  end
end