Rails.application.routes.draw do
  resources :charity_trustees
  resources :charity_remove_refs
  resources :charity_partbs
  resources :charity_objects
  resources :charity_names
  resources :financials
  resources :charity_class_refs
  resources :charity_classes
  resources :charity_aoos
  resources :ar_submits
  resources :aoo_refs
  resources :acct_submits
  resources :registrations
  resources :main_charities
  resources :charities
  get '/charity_overview', to: 'charity_overview#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
