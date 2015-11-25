Rails.application.routes.draw do

  root "game#start"
  get "play" => "game#play"
  namespace :api do
    resources :words, defaults: {format: 'json'}
    get "guess" => "words#guess", defaults: {format: 'json'}
  end

  get '*path', to: 'game#start'

end
