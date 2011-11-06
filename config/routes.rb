Nafnabankinn::Application.routes.draw do
  resources :names
  root :to => 'names#index'
  match "/users" => "users#index"
  match "/random" => "names#random"
  match "/search" => "names#search"

  #User Profile - Show the names the user has selected
  #match 'Profile' => 'users#details', :via => :get , :as => "profile_details"
  #match 'Profile' => ''






  #Authentication no worries here
  match "/auth/:provider/callback" => "sessions#create" 
  match "/signout" => "sessions#destroy", :as => :signout  
end
