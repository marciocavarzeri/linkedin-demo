Rails.application.routes.draw do
  devise_for :users

  resources :linkedin
  get 'linkedin_profile' => 'linkedin#linkedin_profile'
  get 'oauth_account' => 'linkedin#oauth_account'
  get 'linkedin_oauth_url' => 'linkedin#generate_linkedin_oauth_url'

  root 'linkedin#index'
end
