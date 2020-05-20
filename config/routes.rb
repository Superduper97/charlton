Rails.application.routes.draw do

  namespace :admin do
    resources :categories
  end
  devise_for :users

  root 'pages#index'

  namespace :admin do
    resources :products
  end

  resources :pages

  namespace :admin do
    resources :products do
      resources :images, only: :destroy
    end
  end

  resources :contacts, only: [:new, :create]

  get 'machinery/:id' => 'pages#product', as: 'product'

  get 'machinery' => 'pages#machinery'

  get 'admin' => 'admin#admin'

  #get 'contact' => 'pages#contact'
  get 'contact' => 'contacts#contact', as: 'contact'

  get 'ploughparts' => 'pages#ploughparts'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
