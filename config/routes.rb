Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
  root to: "home#show"
  mount ActionCable.server => '/cable'
  post 'start', to: 'home#start'


end
