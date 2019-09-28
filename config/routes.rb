Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :user
  mount Starburst::Engine => "/starburst"
  devise_scope :user do
  authenticated :user do
    root 'dashboard#connectVanilla'
  end
  match '/connectVanilla' => 'dashboard#connectVanilla' ,:via=>[:get,:post] , as: :connectVanilla
  match '/forums' => 'dashboard#forums' ,:via=>[:get,:post] , as: :forums

  unauthenticated do
    root 'devise/sessions#new', as: :unauthenticated_root
  end
end
end
