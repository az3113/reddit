module NavigationHelper

  def links_partial_path
    if user_signed_in?
      'layouts/shared/header/signed_in_links'
    else
      'layouts/shared/header/non_signed_in_links'
    end
  end
  
end