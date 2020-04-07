Rails.application.routes.draw do
  devise_for :users
  get 'tags/:tag', to: 'notes#index', as: :tag
  resources :notes
  root to: 'notes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
