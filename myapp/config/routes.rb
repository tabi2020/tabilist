Rails.application.routes.draw do
  root "top#index"
  get "about" => "top#about" , as: "about"

  get "search/:prefid" => "search#index"
  get "search/:prefid/:prefdetailid" => "search#index"
  resources :search

  get "plan/:planid" => "plan#index"
  resources :plan

  get "members/:action(/:name)" => "members"
  resources :members
end
