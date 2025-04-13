Rails.application.routes.draw do
  # Devise routes for user authentication
  devise_for :users, controllers: { registrations: "registrations" }

  # Single account resource
  resource :accounts

  ### Changes Start Here ###

  # User settings and profile routes
  get "user/me", to: "users#me", as: "my_settings"
  patch "user/update_me", to: "users#update_me", as: "update_my_settings"

  # User password routes
  get "user/password", to: "users#password", as: "my_password"
  patch "user/update_password", to: "users#update_password", as: "my_update_password"

  # Scoped user routes under account
  scope "account", as: "account" do
    resources :users
  end

  ### Changes End Here ###

  # Activity routes
  get "activity/mine"
  get "activity/feed"

  # Root route
  root to: "activity#mine"
end
