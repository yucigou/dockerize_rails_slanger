Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'message/publish/:message', to: 'message#publish'
  get 'message/subscribe'

end
