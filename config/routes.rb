Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index', as: 'home'

  get 'pre-order', to: 'home#index', as: :forms
  post 'pre-order', to: 'forms#create', as: ''
  post 'pre-order/new', to: 'forms#new', as: :new_form
  get 'pre-order/new', to: 'home#index'
  get 'pre-order/:id/edit', to: 'forms#edit', as: :edit_form
  get 'pre-order/:id', to: 'forms#show', as: :form
  patch 'pre-order/:id', to: 'forms#update'
  put 'pre-order/:id', to: 'forms#update'
  delete 'pre-order/:id', to: 'forms#destroy'

end
