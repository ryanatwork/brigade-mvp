BrigadeMvp::Application.routes.draw do
  devise_for :users

  resources :apps

  get "welcome/index"

  root :to => 'welcome#index'

end
