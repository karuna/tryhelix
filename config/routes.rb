Rails.application.routes.draw do
  get '/ruby', to: 'static#ruby'
  get '/helix', to: 'static#helix'
end
