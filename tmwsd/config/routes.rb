Rails.application.routes.draw do
  get '/', to: 'messages#new', as: 'root'

  resources :messages, only: [:new, :create, :show, :index], param: :token

  get '/messages/:token/authenticate', to: 'messages#authenticate', as: 'authenticate_message'
  post '/messages/:token/authenticate', to: 'messages#verify_password', as: 'verify_password'

end
