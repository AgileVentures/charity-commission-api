Rails.application.routes.draw do
  resources :aoo_refs
  resources :acct_submits
  resources :registrations
  resources :main_charities
  resources :charities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
