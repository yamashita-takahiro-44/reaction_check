Rails.application.routes.draw do
  devise_for :users
  root to: 'tests#new'
  get '/test', to: 'tests#new'
  post '/save_result', to: 'tests#save_result'
  get '/results', to: 'tests#results'
end
