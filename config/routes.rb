Rails.application.routes.draw do
get "/" =>"users#index"
get "signup" => "users#new"
get "users/:id" => "users#show"
post "users/create" => "users#create"  
get "users/:id/edit" => "users#edit"
post "users/:id/update" => "users#update"

get "login" => "users#login_form"
post "login" => "users#login"
post "logout" => "users#logout"

resources :users
end