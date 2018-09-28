# LinksHelper
module LinksHelper
  def contact_user_partial_path
    @link.user == current_user || has_role?(:admin) ? 'links/show/signed_author_link' : 'shared/empty_partial'
  end
end
