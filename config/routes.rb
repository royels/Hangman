Rails.application.routes.draw do

  root "game#start"
  get "play" => "game#play"
  namespace :api, defaults: {format: 'json'} do
    resources :words
    get "guess" => "guess#index"
    get "list" => "guess#list"
    get "count" => "guess#count"
    get "pattern" => "guess#pattern"
  end
  get '*path', to: 'game#start'

end
