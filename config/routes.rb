Rails.application.routes.draw do
  get 'analysis/findFactors'
  get 'ciphers/ceaserSolver'
  get 'analysis/LetterFrequency'
  get 'ciphers/morseDecoder'
  get 'ciphers/morse'
  get 'converters/ascii'
  get 'ciphers/vigenere'
  get 'ciphers/ceaser'
  get 'ciphers/rot13'
  get 'ciphers/rot47'
  get 'ciphers/randomSub'
  get '/hex', to: 'static_pages#hex'
  get '/binary', to: 'static_pages#binary'
  get '/home', to:'static_pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
end
