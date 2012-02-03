BrigadeMvp::Application.routes.draw do
  resources :apps

  get "welcome/index"

  root :to => 'welcome#index'

end
