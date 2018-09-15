Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match '/send_mail', to: 'contacts#send_mail', via: 'post'
  resources :links do
    member do
      put 'like', to: 'links#upvote'
      put 'dislike', to: 'links#downvote'
    end
    resources :comments
  end
  namespace :api, defaults: {format: 'json'} do
    resources :links, only: :index
  end
  root 'pages#index'
end