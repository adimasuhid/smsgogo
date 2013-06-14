Smsgogo::Application.routes.draw do
  devise_for :users

  resources :welcome, only: [:index]
  resources :contact_us, only: [:create]
  resources :users
  resources :dashboard, only: [:index]
  resources :lists, only: [:index]

  match "/lists/step2" => "lists#step2", as: "lists_step2"
  match "/lists/step3" => "lists#step3", as: "lists_step3"

  match "/about" => "welcome#about"
  match "/pricing" => "welcome#pricing"
  post "/callback" => "users#callback", as: "callback"


  root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
