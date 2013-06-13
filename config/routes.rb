Smsgogo::Application.routes.draw do
  devise_for :users

  resources "welcome", only: [:index]
  resources "contact_us", only: [:create]
  resources "users" 

  match "/about" => "welcome#about"
  match "/pricing" => "welcome#pricing"
  post "/callback" => "users#callback", as: "callback"


  root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
