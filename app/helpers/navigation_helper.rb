# NavigationHelper
module NavigationHelper
  def links_partial_path
    user_signed_in? ? 'layouts/shared/header/signed_in_links' : 'layouts/shared/header/non_signed_in_links'
  end
end
