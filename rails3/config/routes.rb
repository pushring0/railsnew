Rails.application.routes.draw do
  get 'foo/bar'

  get 'foo/baz'

  get 'sp/home'

  get 'sp/help'

  get "sp/about"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "application#hello"
end
