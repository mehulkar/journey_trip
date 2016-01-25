Rails.application.routes.draw do
  root to: 'static#welcome'
  resource :votes, only: [:create]
end
