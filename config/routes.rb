BrigadeMvp::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  devise_for :users

  resources :apps

  get "welcome/index"

  root :to => 'welcome#index'

end
