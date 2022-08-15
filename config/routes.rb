Rails.application.routes.draw do
  get 'new', to: 'pages#new'
  post 'score', to: 'pages#score'
  # /new(.:format)  'games#new'
  #ST /score(.:format) 'games#score'
end
