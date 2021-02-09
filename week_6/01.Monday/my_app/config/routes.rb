Rails.application.routes.draw do
  get '/', to: 'static#index'
  post '/', to: 'static#index_post'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
