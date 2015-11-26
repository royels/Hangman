Rails.application.routes.draw do

  root "game#start"
  get "play" => "game#play"
  namespace :api, defaults: {format: 'json'} do
    resources :words
    get "guess" => "guess#index"
  end

  get '*path', to: 'game#start'

end
